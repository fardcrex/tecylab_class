import 'package:tecylab_clase_04/feature/destinations_ddd/domain/destination_entity.dart';

sealed class DestinationState {
  DestinationState();
  factory DestinationState.loading() = DestinationLoading;

  factory DestinationState.error(String message) = DestinationError;

  factory DestinationState.success(List<DestinationEntity> destinations) =
      DestinationSuccess;

  factory DestinationState.initial() = DestinationInitial;
}

class DestinationInitial extends DestinationState {}

class DestinationLoading extends DestinationState {
  DestinationLoading();
}

class DestinationError extends DestinationState {
  final String message;

  DestinationError(this.message);
}

class DestinationSuccess extends DestinationState {
  final List<DestinationEntity> destinations;

  DestinationSuccess(this.destinations);
}
