class PriceRange {
  final double min;
  final double max;
  final String currency;
  final int priceLevel; // 1-4 representing $, $$, $$$, $$$$

  const PriceRange({
    required this.min,
    required this.max,
    this.currency = 'USD',
    required this.priceLevel,
  });

  String get displaySymbol {
    return '\$' * priceLevel;
  }

  String get displayRange => '${_formatPrice(min)} - ${_formatPrice(max)}';

  String _formatPrice(double price) => '\$${price.toStringAsFixed(2)}';

  Map<String, dynamic> toJson() => {
        'min': min,
        'max': max,
        'currency': currency,
        'priceLevel': priceLevel,
      };

  factory PriceRange.fromJson(Map<String, dynamic> json) => PriceRange(
        min: (json['min'] as num).toDouble(),
        max: (json['max'] as num).toDouble(),
        currency: json['currency'] as String? ?? 'USD',
        priceLevel: json['priceLevel'] as int,
      );
}
