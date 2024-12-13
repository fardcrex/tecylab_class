class DestinationEntity {
  final String id;
  final String countryFrom;
  final String countryTo;
  final String imageCountryTo;
  final double primaryPrice;
  final double discount;

  DestinationEntity({
    required this.id,
    required this.countryFrom,
    required this.countryTo,
    required this.primaryPrice,
    required this.discount,
    required this.imageCountryTo,
  });

  String get discountPercentage {
    return ((discount) * 100).toStringAsFixed(1);
  }
}
