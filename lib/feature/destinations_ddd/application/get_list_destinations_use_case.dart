import 'package:fpdart/fpdart.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/domain/destination_entity.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/domain/destination_failure.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/domain/interface_destination_repository.dart';

class GetListDestinationsUseCase {
  final InterfaceDestinationRepository _repository;

  const GetListDestinationsUseCase(this._repository);

  Future<Either<DestinationFailure, List<DestinationEntity>>> execute() async {
    final result = await _repository.getDestinations();

    return result.map((destinations) => destinations
        .map((dto) => DestinationEntity(
              id: dto.id.toString(),
              countryFrom: dto.countryFrom,
              countryTo: dto.countryTo,
              imageCountryTo: dto.imageCountryTo ?? '',
              primaryPrice: dto.primaryPrice ?? 0,
              discount: dto.discount ?? 0,
            ))
        .toList());
  }

  Stream<Either<DestinationFailure, List<DestinationEntity>>> executeStream() {
    return _repository.getDestinationsStream().map((result) => result.map(
          (destinations) => destinations
              .map((dto) => DestinationEntity(
                    id: dto.id.toString(),
                    countryFrom: dto.countryFrom,
                    countryTo: dto.countryTo,
                    imageCountryTo: dto.imageCountryTo ?? '',
                    primaryPrice: dto.primaryPrice ?? 0,
                    discount: dto.discount ?? 0,
                  ))
              .toList(),
        ));
  }
}
