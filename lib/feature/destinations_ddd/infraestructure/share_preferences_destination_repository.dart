import 'dart:convert';

import 'package:fpdart/fpdart.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/domain/destination_failure.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/domain/interface_destination_repository.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/infraestructure/destination_dto.dart';

class SharePreferencesDestinationRepository
    implements InterfaceDestinationRepository {
  final SharedPreferences prefs;

  static const key = 'destinations';

  SharePreferencesDestinationRepository(this.prefs);
  @override
  Future<ResponseUnitDestination> createDestination(
      {required String countryFrom,
      required String countryTo,
      required double primaryPrice,
      required double secondaryPrice}) async {
    final destination = DestinationDto(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      countryFrom: countryFrom,
      countryTo: countryTo,
      primaryPrice: primaryPrice,
      secondaryPrice: secondaryPrice,
      imageCountryTo:
          'https://media.gettyimages.com/id/1171615860/es/foto/plaza-botero-medellin-colombia.jpg?s=612x612&w=gi&k=20&c=G7uBDexCnC0kH_Fph-qXMMcxY4IVhVsOr5b1SK41LoY=',
    );

    final destinationsString = prefs.getStringList(key) ?? [];

    final newDestinations = destinationsString
      ..add(jsonEncode(destination.toJson()));

    final result = await prefs.setStringList(key, newDestinations);

    return result
        ? const Right(unit)
        : const Left(DestinationFailure.unexpectedError('Error al guardar'));
  }

  @override
  Future<ResponseUnitDestination> deleteDestination(String id) {
    // TODO: implement deleteDestination
    throw UnimplementedError();
  }

  @override
  Future<ResponseListDestination> getDestinations() {
    final destinationsString = prefs.getStringList(key) ?? [];

    final destinations = destinationsString
        .map((e) => DestinationDto.fromJson(jsonDecode(e)))
        .toList();

    return Future.value(Right(destinations));
  }
}
