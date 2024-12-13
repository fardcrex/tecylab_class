import 'package:fpdart/fpdart.dart';
import 'package:sembast/sembast_io.dart';
import 'package:tecylab_clase_04/const/images_mock.dart';
import 'package:tecylab_clase_04/core/config/sembast/sembast_injection.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/domain/destination_dto.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/domain/destination_failure.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/domain/interface_destination_repository.dart';

class SembastDestinationRepository implements InterfaceDestinationRepository {
  final SembastInjection _instance;

  const SembastDestinationRepository(this._instance);

  @override
  Future<ResponseUnitDestination> createDestination({
    required String countryFrom,
    required String countryTo,
    required double primaryPrice,
    required double discount,
  }) async {
    try {
      final destination = DestinationDto(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        countryFrom: countryFrom,
        countryTo: countryTo,
        primaryPrice: primaryPrice,
        discount: discount,
        imageCountryTo: destinationImageMock,
      ).toJson();

      await _instance.destinationStore.add(_instance.db, destination);

      return const Right(unit);
    } catch (e) {
      return Left(DestinationFailure.unexpectedError(e.toString()));
    }
  }

  @override
  Future<ResponseUnitDestination> deleteDestination(String id) async {
    try {
      await _instance.destinationStore
          .record(int.parse(id))
          .delete(_instance.db);

      return const Right(unit);
    } catch (e) {
      return Left(DestinationFailure.unexpectedError(e.toString()));
    }
  }

  @override
  Future<ResponseListDestination> getDestinations() async {
    try {
      final response = await _instance.destinationStore.find(_instance.db,
          finder: Finder(sortOrders: [SortOrder('id', false)]));

      final destinations = response
          .map((record) =>
              DestinationDto.fromSembast(record.value, record.key.toString()))
          .toList();

      return Right(destinations);
    } catch (e) {
      return const Left(
          DestinationFailure.unexpectedError('Error al obtener los destinos'));
    }
  }

  @override
  Stream<ResponseListDestination> getDestinationsStream() {
    return _instance.destinationStore.query().onSnapshots(_instance.db).map(
        (event) => Right(event
            .map((record) =>
                DestinationDto.fromSembast(record.value, record.key.toString()))
            .toList()));
  }
}
