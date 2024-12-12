part of 'destinations_list_bloc.dart';

@freezed
sealed class DestinationsListState with _$DestinationsListState {
  const factory DestinationsListState.initial() = DestinationsListInitial;
  const factory DestinationsListState.loading() = DestinationsListLoading;
  const factory DestinationsListState.error(DestinationFailure failure) =
      DestinationsListError;
  const factory DestinationsListState.success(
      List<DestinationEntity> destinations) = DestinationsListSuccess;
}
