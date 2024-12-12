class DestinationEntity {
  final String id;
  final String countryFrom;
  final String countryTo;
  final String imageCountryTo;
  final double primaryPrice;
  final double secondaryPrice;

  DestinationEntity({
    required this.id,
    required this.countryFrom,
    required this.countryTo,
    required this.primaryPrice,
    required this.secondaryPrice,
    required this.imageCountryTo,
  });

  bool isThePriceTheSame() {
    return primaryPrice == secondaryPrice;
  }
}
