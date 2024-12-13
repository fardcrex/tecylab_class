import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:tecylab_clase_04/const/images_mock.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/domain/destination_dto.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/domain/destination_failure.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/domain/interface_destination_repository.dart';

class HttpDestinationsRepository implements InterfaceDestinationRepository {
  final dio = Dio();

  static const url = 'https://api.com/destinations';

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

      await dio.post(url, data: dto.toJson());

      return right(unit);
    } catch (e) {
      return left(DestinationFailure.unexpectedError(e.toString()));
    }
  }

  @override
  Future<ResponseUnitDestination> deleteDestination(String id) async {
    try {
      return dio.delete('$url/$id').then((_) => right(unit));
    } catch (e) {
      return left(DestinationFailure.unexpectedError(e.toString()));
    }
  }

  @override
  Future<ResponseListDestination> getDestinations() async {
    try {
      final response = await dio.get(url);

      final list = List<Map<String, dynamic>>.from(response.data as List);

      final destinations = list.map(DestinationDto.fromJson).toList();

      return right(destinations);
    } catch (e) {
      return left(DestinationFailure.unexpectedError(e.toString()));
    }
  }

  @override
  Stream<ResponseListDestination> getDestinationsStream() {
    // TODO: implement getDestinationsStream
    throw UnimplementedError();
  }
}
