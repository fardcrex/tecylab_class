import 'package:tecylab_clase_04/feature/destinations/domain/destination_entity.dart';

class GetDestinationsUseCase {
  const GetDestinationsUseCase();

  Future<DestinationResult> execute(bool withError) async {
    await Future.delayed(const Duration(seconds: 0));

    if (withError) {
      return DestinationResult(
          hasError: withError, error: 'Hay un error 500', destinations: []);
    }

    return DestinationResult(hasError: withError, error: '', destinations: [
      DestinationEntity(
        name: 'Madrid',
        description: 'Capital of Spain',
        imageUrl:
            'https://media.gettyimages.com/id/1171615860/es/foto/plaza-botero-medellin-colombia.jpg?s=612x612&w=gi&k=20&c=G7uBDexCnC0kH_Fph-qXMMcxY4IVhVsOr5b1SK41LoY=',
        location: 'Spain',
      ),
    ]);
  }
}

class DestinationResult {
  final List<DestinationEntity> destinations;
  final String error;
  final bool hasError;

  DestinationResult({
    required this.destinations,
    required this.error,
    required this.hasError,
  });
}
