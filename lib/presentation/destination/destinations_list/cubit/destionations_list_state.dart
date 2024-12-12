part of 'destionations_list_cubit.dart';

@immutable
sealed class DestionationsListState {
  const DestionationsListState();

  factory DestionationsListState.loading() = DestionationsListLoading;

  const factory DestionationsListState.error(String message) =
      DestionationsListError;

  const factory DestionationsListState.success(
      List<DestinationEntity> destinations) = DestionationsListSuccess;

  factory DestionationsListState.initial() = DestionationsListInitial;
}

final class DestionationsListInitial extends DestionationsListState {}

final class DestionationsListLoading extends DestionationsListState {}

final class DestionationsListError extends DestionationsListState {
  final String message;

  const DestionationsListError(this.message);
}

final class DestionationsListSuccess extends DestionationsListState {
  final List<DestinationEntity> destinations;

  const DestionationsListSuccess(this.destinations);
}
