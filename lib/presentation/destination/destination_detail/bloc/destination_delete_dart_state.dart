part of 'destination_delete_dart_bloc.dart';

@freezed
class DestinationDeleteState with _$DestinationDeleteState {
  const factory DestinationDeleteState.initial() = _Initial;
  const factory DestinationDeleteState.loading() = LoadingOnDelete;
  const factory DestinationDeleteState.success() = _Success;
  const factory DestinationDeleteState.error(DestinationFailure failure) =
      _Error;
}
