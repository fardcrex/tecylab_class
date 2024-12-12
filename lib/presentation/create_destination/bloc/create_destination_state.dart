part of 'create_destination_bloc.dart';

@freezed
class CreateDestinationState with _$CreateDestinationState {
  const factory CreateDestinationState.initial() = _Initial;
  const factory CreateDestinationState.loading() =
      CreateDestinationStateLoading;
  const factory CreateDestinationState.error(DestinationFailure failure) =
      CreateDestinationStateError;
  const factory CreateDestinationState.success() =
      CreateDestinationStateSuccess;
}
