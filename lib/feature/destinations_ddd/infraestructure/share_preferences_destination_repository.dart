import 'dart:convert';

import 'package:fpdart/fpdart.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tecylab_clase_04/const/images_mock.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/domain/destination_dto.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/domain/destination_failure.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/domain/interface_destination_repository.dart';

class SharePreferencesDestinationRepository
    implements InterfaceDestinationRepository {
  final SharedPreferences prefs;

  static const key = 'destinations';

  SharePreferencesDestinationRepository(this.prefs);
  @override
  Future<ResponseUnitDestination> createDestination({
    required String countryFrom,
    required String countryTo,
    required double primaryPrice,
    required double discount,
  }) async {
    final destination = DestinationDto(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      countryFrom: countryFrom,
      countryTo: countryTo,
      primaryPrice: primaryPrice,
      discount: discount,
      imageCountryTo: destinationImageMock,
    );

    final destinationsString = prefs.getStringList(key) ?? [];

    final newDestinations = destinationsString
      ..add(jsonEncode({
        ...destination.toJson(),
        'id': destination.id,
      }));

    final result = await prefs.setStringList(key, newDestinations);

    return result
        ? const Right(unit)
        : const Left(DestinationFailure.unexpectedError('Error al guardar'));
  }

  @override
  Future<ResponseUnitDestination> deleteDestination(String id) async {
    final destinationsString = prefs.getStringList(key) ?? [];

    final newDestinations = destinationsString
        .where((element) =>
            DestinationDto.fromJson(jsonDecode(element)).id != int.parse(id))
        .toList();

    final result = await prefs.setStringList(key, newDestinations);

    return result
        ? const Right(unit)
        : const Left(DestinationFailure.unexpectedError('Error al guardar'));
  }

  @override
  Future<ResponseListDestination> getDestinations() {
    final destinationsString = prefs.getStringList(key) ?? [];

    final destinations = destinationsString
        .map((e) => DestinationDto.fromJson(jsonDecode(e)))
        .toList();

    return Future.value(Right(destinations));
  }

  @override
  Stream<ResponseListDestination> getDestinationsStream() {
    // TODO: implement getDestinationsStream
    throw UnimplementedError();
  }
}
