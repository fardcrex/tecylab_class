import 'package:fpdart/fpdart.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/domain/destination_failure.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/domain/interface_destination_repository.dart';

class SqfliteDestinationRepository implements InterfaceDestinationRepository {
  final Database database;

  SqfliteDestinationRepository(this.database);

  @override
  Future<ResponseUnitDestination> createDestination({
    required String countryFrom,
    required String countryTo,
    required double primaryPrice,
    required double secondaryPrice,
  }) async {
    await Future.delayed(const Duration(seconds: 1));

    print('Destination created on sqlflite: $countryFrom, $countryTo');

    return const Right(unit);
  }

  @override
  Future<ResponseUnitDestination> deleteDestination(String id) async {
    await Future.delayed(const Duration(seconds: 1));

    print('Destination deleted on sqlflite: $id');

    return const Right(unit);
  }

  @override
  Future<ResponseListDestination> getDestinations() async {
    final dateTimeNow = DateTime.now();

    return dateTimeNow.second.isEven
        ? const Right([])
        : const Left(DestinationFailure.timeIsNotEven());
  }
}
