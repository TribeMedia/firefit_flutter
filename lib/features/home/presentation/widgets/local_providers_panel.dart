import 'package:firefit/features/common/presentation/theme/app_spacing.dart';
import 'package:firefit/features/home/domain/models/mock_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LocalProvidersPanel extends ConsumerWidget {
  final List<MockProvider> providers;
  final Function(MockProvider) onProviderTap;

  const LocalProvidersPanel({
    super.key,
    required this.providers,
    required this.onProviderTap,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildHeader(context),
        AppSpacing.vertical16,
        if (providers.isEmpty)
          _buildEmptyState(context)
        else
          _buildProvidersList(context),
      ],
    );
  }

  Widget _buildHeader(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Local Providers',
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        TextButton.icon(
          onPressed: () => _showAllProviders(context),
          icon: const Icon(Icons.map_outlined),
          label: const Text('View Map'),
        ),
      ],
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: AppSpacing.a24,
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainer,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.store_outlined,
            size: 48,
            color: theme.colorScheme.primary,
          ),
          AppSpacing.vertical16,
          Text(
            'No Local Providers Found',
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          AppSpacing.vertical8,
          Text(
            'Try expanding your search area',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurface.withValues(
                red: theme.colorScheme.onSurface.r.toDouble(),
                green: theme.colorScheme.onSurface.g.toDouble(),
                blue: theme.colorScheme.onSurface.b.toDouble(),
                alpha: 179.0, // 0.7 * 255 ≈ 179
              ),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildProvidersList(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: providers.length,
      separatorBuilder: (context, index) => AppSpacing.vertical12,
      itemBuilder: (context, index) => _buildProviderCard(
        context,
        providers[index],
      ),
    );
  }

  Widget _buildProviderCard(BuildContext context, MockProvider provider) {
    final theme = Theme.of(context);

    return InkWell(
      onTap: () => onProviderTap(provider),
      borderRadius: BorderRadius.circular(12),
      child: Container(
        decoration: BoxDecoration(
          color: theme.colorScheme.surfaceContainer,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildProviderImage(context, provider),
            Padding(
              padding: AppSpacing.a16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              provider.name,
                              style: theme.textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            AppSpacing.vertical4,
                            Text(
                              '${provider.type} • ${provider.distance}',
                              style: theme.textTheme.bodySmall?.copyWith(
                                color: theme.colorScheme.onSurface.withValues(
                                  red: theme.colorScheme.onSurface.r.toDouble(),
                                  green:
                                      theme.colorScheme.onSurface.g.toDouble(),
                                  blue:
                                      theme.colorScheme.onSurface.b.toDouble(),
                                  alpha: 179.0, // 0.7 * 255 ≈ 179
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      _buildRatingBadge(context, provider),
                    ],
                  ),
                  AppSpacing.vertical8,
                  _buildTags(context, provider),
                  if (provider.specialOffers != null) ...[
                    AppSpacing.vertical8,
                    _buildSpecialOffer(context, provider),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProviderImage(BuildContext context, MockProvider provider) {
    final theme = Theme.of(context);

    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(12),
          ),
          child: Image.network(
            provider.imageUrl,
            height: 160,
            width: double.infinity,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                height: 160,
                color: theme.colorScheme.surface,
                child: Icon(
                  Icons.store,
                  size: 48,
                  color: theme.colorScheme.onSurface.withValues(
                    red: theme.colorScheme.onSurface.r.toDouble(),
                    green: theme.colorScheme.onSurface.g.toDouble(),
                    blue: theme.colorScheme.onSurface.b.toDouble(),
                    alpha: 128.0, // 0.5 * 255 ≈ 128
                  ),
                ),
              );
            },
          ),
        ),
        if (provider.hasFirefighterDiscount)
          Positioned(
            top: 12,
            left: 12,
            child: Container(
              padding: AppSpacing.h8.copyWith(top: 4),
              decoration: BoxDecoration(
                color: theme.colorScheme.primary,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.local_fire_department,
                    size: 16,
                    color: theme.colorScheme.onPrimary,
                  ),
                  AppSpacing.horizontal4,
                  Text(
                    'FF Discount',
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: theme.colorScheme.onPrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        Positioned(
          top: 12,
          right: 12,
          child: Container(
            padding: AppSpacing.h8.copyWith(top: 4),
            decoration: BoxDecoration(
              color: provider.isOpen
                  ? theme.colorScheme.primary
                  : theme.colorScheme.error,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Text(
              provider.isOpen ? 'OPEN' : 'CLOSED',
              style: theme.textTheme.labelSmall?.copyWith(
                color: theme.colorScheme.onPrimary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildRatingBadge(BuildContext context, MockProvider provider) {
    final theme = Theme.of(context);

    return Row(
      children: [
        Container(
          padding: AppSpacing.h8.copyWith(top: 4),
          decoration: BoxDecoration(
            color: theme.colorScheme.primary.withValues(
              red: theme.colorScheme.primary.r.toDouble(),
              green: theme.colorScheme.primary.g.toDouble(),
              blue: theme.colorScheme.primary.b.toDouble(),
              alpha: 26.0, // 0.1 * 255 ≈ 26
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: [
              Icon(
                Icons.star,
                size: 16,
                color: theme.colorScheme.primary,
              ),
              AppSpacing.horizontal4,
              Text(
                provider.rating.toString(),
                style: theme.textTheme.labelSmall?.copyWith(
                  color: theme.colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                ' (${provider.numberOfRatings})',
                style: theme.textTheme.labelSmall?.copyWith(
                  color: theme.colorScheme.onSurface.withValues(
                    red: theme.colorScheme.onSurface.r.toDouble(),
                    green: theme.colorScheme.onSurface.g.toDouble(),
                    blue: theme.colorScheme.onSurface.b.toDouble(),
                    alpha: 179.0, // 0.7 * 255 ≈ 179
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTags(BuildContext context, MockProvider provider) {
    final theme = Theme.of(context);

    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: provider.tags.map((tag) {
        return Container(
          padding: AppSpacing.h8.copyWith(top: 4),
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(
            tag,
            style: theme.textTheme.labelSmall?.copyWith(
              color: theme.colorScheme.onSurface.withValues(
                red: theme.colorScheme.onSurface.r.toDouble(),
                green: theme.colorScheme.onSurface.g.toDouble(),
                blue: theme.colorScheme.onSurface.b.toDouble(),
                alpha: 179.0, // 0.7 * 255 ≈ 179
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildSpecialOffer(BuildContext context, MockProvider provider) {
    final theme = Theme.of(context);

    return Container(
      padding: AppSpacing.a12,
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: theme.colorScheme.primary.withValues(
            red: theme.colorScheme.primary.r.toDouble(),
            green: theme.colorScheme.primary.g.toDouble(),
            blue: theme.colorScheme.primary.b.toDouble(),
            alpha: 51.0, // 0.2 * 255 ≈ 51
          ),
        ),
      ),
      child: Row(
        children: [
          Icon(
            Icons.local_offer,
            size: 20,
            color: theme.colorScheme.primary,
          ),
          AppSpacing.horizontal8,
          Expanded(
            child: Text(
              provider.specialOffers!['description'] as String,
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showAllProviders(BuildContext context) {
    // Navigate to providers map view
  }
}
