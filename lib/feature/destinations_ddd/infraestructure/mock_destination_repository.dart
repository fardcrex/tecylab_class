import 'package:fpdart/fpdart.dart';
import 'package:tecylab_clase_04/const/images_mock.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/domain/destination_dto.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/domain/destination_failure.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/domain/interface_destination_repository.dart';

class MockDestinationRepository implements InterfaceDestinationRepository {
  List<DestinationDto> destinations = [];

  @override
  Future<ResponseUnitDestination> createDestination({
    required String countryFrom,
    required String countryTo,
    required double primaryPrice,
    required double discount,
  }) async {
    await Future.delayed(const Duration(seconds: 1));

    destinations.add(DestinationDto(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      countryFrom: countryFrom,
      countryTo: countryTo,
      primaryPrice: primaryPrice,
      discount: discount,
      imageCountryTo: destinationImageMock,
    ));
    return const Right(unit);
  }

  @override
  Future<ResponseUnitDestination> deleteDestination(String id) async {
    await Future.delayed(const Duration(seconds: 1));

    destinations.removeWhere((element) => element.id.toString() == id);

    return const Right(unit);
  }

  @override
  Future<ResponseListDestination> getDestinations() async {
    final dateTimeNow = DateTime.now();

    return dateTimeNow.second.isEven
        ? Right(destinations)
        : const Left(DestinationFailure.timeIsNotEven());
  }

  @override
  Stream<ResponseListDestination> getDestinationsStream() {
    // TODO: implement getDestinationsStream
    throw UnimplementedError();
  }
}
