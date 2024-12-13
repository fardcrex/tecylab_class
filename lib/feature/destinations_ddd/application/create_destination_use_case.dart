import 'package:fpdart/fpdart.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/domain/destination_failure.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/domain/interface_destination_repository.dart';

class CreateDestinationUseCase {
  final InterfaceDestinationRepository _repository;

  const CreateDestinationUseCase(this._repository);

  Future<Either<DestinationFailure, Unit>> execute({
    required String countryFrom,
    required String countryTo,
    required double primaryPrice,
    required double discount,
  }) async {
    return _repository.createDestination(
      countryFrom: countryFrom,
      countryTo: countryTo,
      primaryPrice: primaryPrice,
      discount: discount,
    );
  }
}
