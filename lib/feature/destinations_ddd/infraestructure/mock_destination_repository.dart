import 'package:fpdart/fpdart.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/domain/destination_failure.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/domain/interface_destination_repository.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/infraestructure/destination_dto.dart';

class MockDestinationRepository implements InterfaceDestinationRepository {
  List<DestinationDto> destinations = [];

  @override
  Future<ResponseUnitDestination> createDestination({
    required String countryFrom,
    required String countryTo,
    required double primaryPrice,
    required double secondaryPrice,
  }) async {
    print(
        'Destination created on Mock: $countryFrom, $countryTo, $primaryPrice, $secondaryPrice');

    await Future.delayed(const Duration(seconds: 1));

    destinations.add(DestinationDto(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      countryFrom: countryFrom,
      countryTo: countryTo,
      primaryPrice: primaryPrice,
      secondaryPrice: secondaryPrice,
      imageCountryTo:
          'https://media.gettyimages.com/id/1171615860/es/foto/plaza-botero-medellin-colombia.jpg?s=612x612&w=gi&k=20&c=G7uBDexCnC0kH_Fph-qXMMcxY4IVhVsOr5b1SK41LoY=',
    ));
    return const Right(unit);
  }

  @override
  Future<ResponseUnitDestination> deleteDestination(String id) async {
    await Future.delayed(const Duration(seconds: 1));

    print('Destination deleted on sqlflite: $id');

    throw UnimplementedError();
  }

  @override
  Future<ResponseListDestination> getDestinations() async {
    final dateTimeNow = DateTime.now();

    return dateTimeNow.second.isEven
        ? Right(destinations)
        : const Left(DestinationFailure.timeIsNotEven());
  }
}
