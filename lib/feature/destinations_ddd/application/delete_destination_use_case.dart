import 'package:tecylab_clase_04/feature/destinations_ddd/domain/interface_destination_repository.dart';

class DeleteDestinationUseCase {
  final InterfaceDestinationRepository _destinationRepository;

  DeleteDestinationUseCase(this._destinationRepository);

  Future<ResponseUnitDestination> execute(String id) {
    return _destinationRepository.deleteDestination(id);
  }
}
