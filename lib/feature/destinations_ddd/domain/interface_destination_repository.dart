import 'package:fpdart/fpdart.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/domain/destination_dto.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/domain/destination_failure.dart';

abstract interface class InterfaceDestinationRepository {
  Future<ResponseUnitDestination> createDestination({
    required String countryFrom,
    required String countryTo,
    required double primaryPrice,
    required double discount,
  });

  Future<ResponseUnitDestination> deleteDestination(String id);

  Future<ResponseListDestination> getDestinations();

  Stream<ResponseListDestination> getDestinationsStream();
}

typedef ResponseListDestination
    = Either<DestinationFailure, List<DestinationDto>>;

typedef ResponseUnitDestination = Either<DestinationFailure, Unit>;
