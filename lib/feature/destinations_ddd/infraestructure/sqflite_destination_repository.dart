import 'package:fpdart/fpdart.dart';
import 'package:tecylab_clase_04/const/images_mock.dart';
import 'package:tecylab_clase_04/core/config/sqflite/sqflite_injection.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/domain/destination_dto.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/domain/destination_failure.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/domain/interface_destination_repository.dart';

class SqfliteDestinationRepository implements InterfaceDestinationRepository {
  final SqfliteInjection instance;

  static const tableName = 'destinations';

  const SqfliteDestinationRepository(this.instance);

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

      instance.db.insert(tableName, dto.toJson());

      return right(unit);
    } catch (e) {
      return left(DestinationFailure.unexpectedError(e.toString()));
    }
  }

  @override
  Future<ResponseUnitDestination> deleteDestination(String id) async {
    try {
      await Future.delayed(const Duration(seconds: 2));

      //throw Exception('Error');

      await instance.db.delete(tableName, where: 'id = ?', whereArgs: [id]);

      return right(unit);
    } catch (e) {
      return left(DestinationFailure.unexpectedError(e.toString()));
    }
  }

  @override
  Future<ResponseListDestination> getDestinations() async {
    try {
      final response = await instance.db.query(tableName, orderBy: 'id DESC');

      final destinations =
          response.map((e) => DestinationDto.fromJson(e)).toList();

      return right(destinations);
    } catch (e) {
      return left(DestinationFailure.unexpectedError(e.toString()));
    }
  }

  @override
  Stream<ResponseListDestination> getDestinationsStream() {
    return Stream.fromFuture(getDestinations());
  }
}
