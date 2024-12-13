part of 'destination_delete_dart_bloc.dart';

@freezed
class DestinationDeleteEvent with _$DestinationDeleteEvent {
  const factory DestinationDeleteEvent.delete(String id) = _DeleteDestination;
}
