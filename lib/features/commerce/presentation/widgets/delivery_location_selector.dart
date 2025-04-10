import 'package:core/commerce/commerce.dart';
import 'package:core/commerce/graphql/orders.graphql.dart';
import 'package:core/common/failures/failure.dart';
import 'package:firefit/features/commerce/presentation/providers/delivery_location_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

/// A widget that displays a list of delivery locations for selection
class DeliveryLocationSelector extends ConsumerStatefulWidget {
  const DeliveryLocationSelector({
    super.key,
    required this.onDeliveryLocationSelected,
    this.selectedLocation,
  });

  /// Callback that fires when a delivery location is selected
  final void Function(Fragment$DeliveryLocation?) onDeliveryLocationSelected;

  /// The currently selected delivery location, if any
  final Fragment$DeliveryLocation? selectedLocation;

  @override
  ConsumerState<DeliveryLocationSelector> createState() =>
      _DeliveryLocationSelectorState();
}

class _DeliveryLocationSelectorState
    extends ConsumerState<DeliveryLocationSelector> {
  Fragment$DeliveryLocation? _selectedLocation;

  @override
  void initState() {
    super.initState();
    _selectedLocation = widget.selectedLocation;
  }

  @override
  Widget build(BuildContext context) {
    final deliveryLocationsWithPeriod =
        ref.watch(siteDeliveryLocationWithPeriodProvider);
    final theme = Theme.of(context);

    return deliveryLocationsWithPeriod.when(
      data: (locationsResult) {
        return locationsResult.fold(
          (failure) => _buildErrorState(context, failure),
          (locationsWithPeriods) {
            if (locationsWithPeriods.isEmpty) {
              return _buildEmptyState(context);
            }
            return _buildLocationSelector(context, locationsWithPeriods);
          },
        );
      },
      error: (e, s) => _buildErrorState(
          context, Failure.unprocessableEntity(message: e.toString())),
      loading: () => Center(
        child: CircularProgressIndicator(
          color: theme.colorScheme.primary,
        ),
      ),
    );
  }

  /// Builds the error state widget
  Widget _buildErrorState(BuildContext context, Failure failure) {
    final theme = Theme.of(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.error_outline, color: theme.colorScheme.error, size: 48),
            const SizedBox(height: 16),
            Text(
              'Unable to load delivery locations',
              style: theme.textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              failure.error,
              style: theme.textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  /// Builds the empty state widget
  Widget _buildEmptyState(BuildContext context) {
    final theme = Theme.of(context);
    final mediaQuery = MediaQuery.of(context);

    return Padding(
      padding: EdgeInsets.only(
        left: 24.0,
        right: 24.0,
        bottom: 24.0 + mediaQuery.padding.bottom,
        top: 24.0 + mediaQuery.padding.top,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.location_off,
              color: theme.colorScheme.secondary, size: 48),
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
          const SizedBox(height: 32),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              style: ElevatedButton.styleFrom(
                backgroundColor: theme.colorScheme.primary,
                foregroundColor: theme.colorScheme.onPrimary,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text('Cancel'),
            ),
          ),
        ],
      ),
    );
  }

  /// Builds the location selector widget
  Widget _buildLocationSelector(BuildContext context,
      List<DeliveryLocationWithPeriod> locationsWithPeriods) {
    final theme = Theme.of(context);
    final mediaQuery = MediaQuery.of(context);

    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              itemCount: locationsWithPeriods.length,
              itemBuilder: (context, index) {
                final locationWithPeriod = locationsWithPeriods[index];
                final location = locationWithPeriod.location;
                final period = locationWithPeriod.period;

                // Check if this location is selected
                final isSelected = _selectedLocation?.id == location.id;

                return _buildLocationCard(
                  context,
                  location,
                  period,
                  isSelected: isSelected,
                );
              },
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(
              left: 16,
              right: 16,
              bottom: 16 + mediaQuery.padding.bottom,
              top: 16,
            ),
            decoration: BoxDecoration(
              color: theme.colorScheme.background,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 8,
                  offset: const Offset(0, -2),
                ),
              ],
            ),
            child: ElevatedButton(
              onPressed: _selectedLocation != null
                  ? () => widget.onDeliveryLocationSelected(_selectedLocation)
                  : () => Navigator.of(context).pop(),
              style: ElevatedButton.styleFrom(
                backgroundColor: _selectedLocation != null
                    ? theme.colorScheme.primary
                    : theme.colorScheme.surface,
                foregroundColor: _selectedLocation != null
                    ? theme.colorScheme.onPrimary
                    : theme.colorScheme.onSurface,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(_selectedLocation != null ? 'Continue' : 'Cancel'),
            ),
          ),
        ],
      ),
    );
  }

  /// Builds a card for a single delivery location
  Widget _buildLocationCard(
      BuildContext context, DeliveryLocation location, DeliveryPeriod period,
      {bool isSelected = false}) {
    final theme = Theme.of(context);

    // Extract location details
    final locationName = location.name;

    // Get the address - only address1 without city and state
    String locationAddress = location.address.address;

    // Format delivery date
    String startDateStr = '';
    if (period.startDate.toString().isNotEmpty) {
      try {
        final date = DateTime.parse(period.startDate.toString());
        startDateStr = DateFormat('EEEE, MMMM d')
            .format(date); // e.g. "Monday, January 15"
      } catch (e) {
        startDateStr = period.title ?? '';
      }
    }

    String endDateStr = '';
    if (period.endDate.toString().isNotEmpty) {
      try {
        final date = DateTime.parse(period.endDate.toString());
        endDateStr = DateFormat('EEEE, MMMM d')
            .format(date); // e.g. "Monday, January 15"
      } catch (e) {
        endDateStr = period.title ?? '';
      }
    }

    String dateStr = '';
    if (startDateStr.isNotEmpty && endDateStr.isNotEmpty) {
      dateStr = '$startDateStr - $endDateStr';
    } else {
      dateStr = startDateStr;
    }

    // Format time slot
    String timeSlot = '';
    if (location.startOpenTime != null && location.endOpenTime != null) {
      timeSlot =
          '${_formatTime(location.startOpenTime)} – ${_formatTime(location.endOpenTime)}';
    }

    // We don't need to combine date and time anymore since they're on separate lines

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: isSelected
            ? theme.colorScheme.primaryContainer.withOpacity(0.3)
            : theme.colorScheme.surfaceContainer,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            setState(() {
              _selectedLocation = location;
            });
          },
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Radio button with no border
                Theme(
                  data: theme.copyWith(
                    unselectedWidgetColor:
                        theme.colorScheme.onSurface.withOpacity(0.6),
                  ),
                  child: Radio<String>(
                    value: location.id,
                    groupValue: _selectedLocation?.id,
                    activeColor: theme.colorScheme.primary,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    visualDensity: VisualDensity.compact,
                    onChanged: (value) {
                      setState(() {
                        if (value != null) {
                          _selectedLocation = location;
                        }
                      });
                    },
                  ),
                ),
                const SizedBox(width: 12),
                // Location details
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Location name in bold
                      Text(
                        locationName,
                        style: theme.textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // Address on second line
                      if (locationAddress.isNotEmpty) ...[
                        const SizedBox(height: 4),
                        Text(
                          locationAddress,
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: theme.colorScheme.onSurface.withOpacity(0.8),
                          ),
                        ),
                      ],
                      // Day on third line
                      const SizedBox(height: 8),
                      Text(
                        dateStr,
                        style: theme.textTheme.bodyMedium,
                      ),
                      // Time slot on fourth line (if available)
                      if (timeSlot.isNotEmpty) ...[
                        const SizedBox(height: 4),
                        Text(
                          timeSlot,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ],
                    ],
                  ),
                ),
              ],
            ),
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
      return DateFormat('h:mm a').format(dt); // Format as "8:00 AM"
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
    Fragment$DeliveryLocation? selectedLocation,
  }) async {
    final theme = Theme.of(context);
    Fragment$DeliveryLocation? result;

    await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: theme.colorScheme.background,
      useSafeArea: true,
      builder: (context) => SizedBox(
        height: MediaQuery.of(context).size.height * 0.8,
        child: Column(
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

            // Delivery location selector
            Expanded(
              child: DeliveryLocationSelector(
                onDeliveryLocationSelected: (location) {
                  result = location;
                  Navigator.of(context).pop();
                },
                selectedLocation: selectedLocation,
              ),
            ),
          ],
        ),
      ),
    );

    return result;
  }
}
