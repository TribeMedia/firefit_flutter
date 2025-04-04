import 'package:core/commerce/commerce.dart';
import 'package:core/commerce/graphql/orders.graphql.dart';
import 'package:core/common/failures/failure.dart';
import 'package:firefit/features/commerce/presentation/providers/delivery_location_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

/// A widget that displays a list of delivery locations for selection
class DeliveryLocationSelector extends ConsumerWidget {
  const DeliveryLocationSelector({
    super.key,
    required this.onDeliveryLocationSelected,
    this.selectedLocation,
    this.showNoneOption = true,
    this.showOpenHours = true,
    this.compact = false,
  });

  /// Callback that fires when a delivery location is selected
  /// If the user selects "None", this will be called with null
  final void Function(Fragment$DeliveryLocation?) onDeliveryLocationSelected;
  
  /// The currently selected delivery location, if any
  final Fragment$DeliveryLocation? selectedLocation;
  
  /// Whether to show the "None" option
  final bool showNoneOption;
  
  /// Whether to show the location's open hours
  final bool showOpenHours;
  
  /// Whether to use a compact layout
  final bool compact;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deliveryLocations = ref.watch(siteDeliveryLocationProvider);
    
    return deliveryLocations.when(
      data: (locationsResult) {
        return locationsResult.fold(
          (failure) => _buildErrorState(context, failure),
          (locations) => _buildLocationSelector(context, locations),
        );
      },
      error: (e, s) => _buildErrorState(context, Failure.unprocessableEntity(message: e.toString())),
      loading: () => const Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }

  /// Builds the error state widget
  Widget _buildErrorState(BuildContext context, Failure failure) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.error_outline, color: Colors.red, size: 48),
            const SizedBox(height: 16),
            Text(
              'Unable to load delivery locations',
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              failure.error,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  /// Builds the location selector widget
  Widget _buildLocationSelector(BuildContext context, List<DeliveryLocation> locations) {
    final theme = Theme.of(context);
    
    if (locations.isEmpty) {
      return Card(
        margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.location_off, color: Colors.orange, size: 48),
              const SizedBox(height: 16),
              Text(
                'No delivery locations available',
                style: theme.textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                'There are currently no delivery locations available for selection.',
                style: theme.textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ShadButton(
                  onPressed: () => Navigator.of(context).pop(null),
                  child: Text('Close'),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (!compact) Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0, bottom: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Select Delivery Location',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Divider(),
              const SizedBox(height: 4),
            ],
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: locations.length + (showNoneOption ? 1 : 0), // +1 for the "None" option if enabled
          itemBuilder: (context, index) {
            // "None" option is the last item if enabled
            if (showNoneOption && index == locations.length) {
              return _buildLocationCard(
                context,
                null,
                isNoneOption: true,
              );
            }
            
            final location = locations[index];
            // Check if this location matches the selected location
            bool isSelected = selectedLocation != null && location.id == selectedLocation!.id;
            
            return _buildLocationCard(
              context, 
              location,
              locationNumber: index + 1,
              isSelected: isSelected,
            );
          },
        ),
      ],
    );
  }

  /// Builds a card for a single delivery location
  Widget _buildLocationCard(
    BuildContext context, 
    DeliveryLocation? location, 
    {bool isNoneOption = false, bool isSelected = false, int? locationNumber}
  ) {
    final theme = Theme.of(context);
    
    // Extract location details if available
    String locationName = 'None';
    String locationAddress = 'No delivery location selected';
    String? openHours;
    
    if (!isNoneOption && location != null) {
      locationName = location.name;
      
      // Get the address details
      final address = location.address;
      final addressParts = <String>[];
      
      if (address.name.isNotEmpty) {
        addressParts.add(address.name);
      }
      
      if (address.address1 != null && address.address1!.isNotEmpty) {
        addressParts.add(address.address1!);
      }
      
      if (address.city.isNotEmpty) {
        addressParts.add(address.city);
      }
      
      if (address.state.isNotEmpty) {
        addressParts.add(address.state);
      }
      
      locationAddress = addressParts.join(', ');
      
      // Format open hours if available and requested
      if (showOpenHours && location.startOpenTime != null && location.endOpenTime != null) {
        openHours = 'Open: ${_formatTime(location.startOpenTime)} - ${_formatTime(location.endOpenTime)}';
      }
    }
    
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: isSelected 
              ? theme.colorScheme.primary 
              : theme.colorScheme.outline.withOpacity(0.2),
          width: isSelected ? 2 : 1,
        ),
      ),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {
          if (isNoneOption) {
            // If "None" option is selected, pass null
            onDeliveryLocationSelected(null);
          } else if (location != null) {
            onDeliveryLocationSelected(location);
          }
        },
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Container(
                width: compact ? 40 : 52,
                height: compact ? 40 : 52,
                decoration: BoxDecoration(
                  color: isNoneOption 
                      ? theme.colorScheme.errorContainer
                      : isSelected
                          ? theme.colorScheme.primaryContainer
                          : theme.colorScheme.surfaceVariant,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Icon(
                    isNoneOption ? Icons.close : Icons.location_on,
                    color: isNoneOption 
                        ? theme.colorScheme.onErrorContainer
                        : isSelected
                            ? theme.colorScheme.onPrimaryContainer
                            : theme.colorScheme.onSurfaceVariant,
                    size: compact ? 20 : 28,
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      isNoneOption ? 'None' : locationName,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Text(
                        isNoneOption ? 'No delivery location selected' : locationAddress,
                        style: theme.textTheme.bodyMedium,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    if (openHours != null && !compact) Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Text(
                        openHours,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.primary,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              if (isSelected)
                Icon(
                  Icons.check_circle,
                  color: theme.colorScheme.primary,
                  size: 24,
                )
              else
                Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: theme.colorScheme.onSurfaceVariant,
                ),
            ],
          ),
        ),
      ),
    );
  }
  
  /// Helper method to format time string from "HH:MM:SS" to "H:MM AM/PM"
  String _formatTime(String time) {
    try {
      // Parse time format like "08:00:00"
      final parts = time.split(':');
      final hour = int.parse(parts[0]);
      final minute = int.parse(parts[1]);
      
      final dt = DateTime(2022, 1, 1, hour, minute);
      return DateFormat.jm().format(dt); // Format as "8:00 AM"
    } catch (e) {
      return time; // Return the original if parsing fails
    }
  }
}

/// A utility class to show a delivery location selector in a bottom sheet
class DeliveryLocationBottomSheet {
  /// Shows a bottom sheet with delivery location selection options
  /// 
  /// Returns the selected DeliveryLocation or null if none was selected
  static Future<Fragment$DeliveryLocation?> show({
    required BuildContext context,
    required List<DeliveryLocation> deliveryLocations,
    Fragment$DeliveryLocation? selectedLocation,
    bool showNoneOption = true,
    bool showOpenHours = true,
  }) async {
    if (deliveryLocations.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('No delivery locations available'),
          behavior: SnackBarBehavior.floating,
        ),
      );
      return null;
    }
    
    final theme = Theme.of(context);
    Fragment$DeliveryLocation? result;
    
    await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: theme.colorScheme.surface,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      builder: (context) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Select Delivery Location',
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ],
              ),
            ),
            const Divider(),
            
            // Delivery location list
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height * 0.6,
              ),
              child: SingleChildScrollView(
                child: DeliveryLocationSelector(
                  onDeliveryLocationSelected: (location) {
                    result = location;
                    Navigator.of(context).pop();
                  },
                  selectedLocation: selectedLocation,
                  showNoneOption: showNoneOption,
                  showOpenHours: showOpenHours,
                  compact: false,
                ),
              ),
            ),
          ],
        ),
      ),
    );
    
    return result;
  }
}
