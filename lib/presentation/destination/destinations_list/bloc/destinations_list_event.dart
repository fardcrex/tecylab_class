part of 'destinations_list_bloc.dart';

@freezed
class DestinationsListEvent with _$DestinationsListEvent {
  const factory DestinationsListEvent.load({
    required bool withError,
  }) = LoadDestinations;
}