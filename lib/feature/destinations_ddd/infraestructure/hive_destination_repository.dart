import 'package:fpdart/fpdart.dart';
import 'package:tecylab_clase_04/const/images_mock.dart';
import 'package:tecylab_clase_04/core/config/hive/hive_injection.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/domain/destination_dto.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/domain/destination_failure.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/domain/interface_destination_repository.dart';

class HiveDestinationRepository implements InterfaceDestinationRepository {
  final HiveInjection _instance;

  HiveDestinationRepository(this._instance);

  @override
  Future<ResponseUnitDestination> createDestination({
    required String countryFrom,
    required String countryTo,
    required double primaryPrice,
    required double discount,
  }) async {
    try {
      final dto = DestinationDto(
        id: '',
        countryFrom: countryFrom,
        countryTo: countryTo,
        primaryPrice: primaryPrice,
        discount: discount,
        imageCountryTo: destinationImageMock,
      );
      await _instance.destinationBox.add(dto.toJson());

      return const Right(unit);
    } catch (e) {
      return Left(DestinationFailure.unexpectedError(e.toString()));
    }
  }

  @override
  Future<ResponseUnitDestination> deleteDestination(String id) async {
    try {
      await _instance.destinationBox.delete((id));

      return const Right(unit);
    } catch (e) {
      return Left(DestinationFailure.unexpectedError(e.toString()));
    }
  }

  @override
  Future<ResponseListDestination> getDestinations() async {
    try {
      final response = _instance.destinationBox.values.toList();

      final destinations =
          response.map((record) => DestinationDto.fromJson(record)).toList();

      return Right(destinations);
    } catch (e) {
      return Left(DestinationFailure.unexpectedError(e.toString()));
    }
  }

  @override
  Stream<ResponseListDestination> getDestinationsStream() {
    return Stream.fromFuture(getDestinations());
  }
}
