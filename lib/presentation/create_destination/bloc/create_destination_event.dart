part of 'create_destination_bloc.dart';

@freezed
class CreateDestinationEvent with _$CreateDestinationEvent {
  const factory CreateDestinationEvent.create({
    required String countryFrom,
    required String countryTo,
    required double primaryPrice,
    required double secondaryPrice,
  }) = _Create;
}
