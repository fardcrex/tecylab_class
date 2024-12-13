import 'package:fpdart/fpdart.dart';
import 'package:tecylab_clase_04/const/images_mock.dart';
import 'package:tecylab_clase_04/core/config/firebase/firebase_injection.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/domain/destination_dto.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/domain/destination_failure.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/domain/interface_destination_repository.dart';

class FirebaseDestinationsRepository implements InterfaceDestinationRepository {
  final FirebaseInjection _instance;

  static const collectionName = 'destinations';

  const FirebaseDestinationsRepository(this._instance);

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

      await _instance.firestore.collection(collectionName).add(dto.toJson());

      return right(unit);
    } catch (e) {
      return left(DestinationFailure.unexpectedError(e.toString()));
    }
  }

  @override
  Future<ResponseUnitDestination> deleteDestination(String id) async {
    try {
      await _instance.firestore.collection(collectionName).doc(id).delete();

      return right(unit);
    } catch (e) {
      return left(DestinationFailure.unexpectedError(e.toString()));
    }
  }

  @override
  Future<ResponseListDestination> getDestinations() async {
    try {
      final response =
          await _instance.firestore.collection(collectionName).get();

      final destinations = response.docs
          .map((doc) => DestinationDto.fromSembast(doc.data(), doc.id))
          .toList();

      return right(destinations);
    } catch (e) {
      return left(DestinationFailure.unexpectedError(e.toString()));
    }
  }

  @override
  Stream<ResponseListDestination> getDestinationsStream() {
    return _instance.firestore
        .collection(collectionName)
        .snapshots()
        .map((snapshot) {
      return right(snapshot.docs
          .map((doc) => DestinationDto.fromSembast(doc.data(), doc.id))
          .toList());
    });
  }
}
