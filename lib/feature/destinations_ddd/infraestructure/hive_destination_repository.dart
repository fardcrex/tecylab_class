import 'package:fpdart/fpdart.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/domain/interface_destination_repository.dart';

class HiveDestinationRepository implements InterfaceDestinationRepository {
  @override
  Future<ResponseUnitDestination> createDestination({
    required String countryFrom,
    required String countryTo,
    required double primaryPrice,
    required double secondaryPrice,
  }) async {
    await Future.delayed(const Duration(seconds: 1));

    print('Destination created on hive: $countryFrom, $countryTo');

    throw UnimplementedError();
  }

  @override
  Future<ResponseUnitDestination> deleteDestination(String id) async {
    await Future.delayed(const Duration(seconds: 1));

    print('Destination deleted on hive: $id');

    throw UnimplementedError();
  }

  @override
  Future<ResponseListDestination> getDestinations() async {
    await Future.delayed(const Duration(seconds: 1));

    return const Right([]);
  }
}
