import 'package:fpdart/fpdart.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/domain/interface_destination_repository.dart';

class SembastDestinationRepository implements InterfaceDestinationRepository {
  @override
  Future<ResponseUnitDestination> createDestination({
    required String countryFrom,
    required String countryTo,
    required double primaryPrice,
    required double secondaryPrice,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<ResponseUnitDestination> deleteDestination(String id) {
    throw UnimplementedError();
  }

  @override
  Future<ResponseListDestination> getDestinations() async {
    return const Right([]);
  }
}
