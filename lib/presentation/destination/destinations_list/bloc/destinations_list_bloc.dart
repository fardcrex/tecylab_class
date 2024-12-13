import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/application/get_list_destinations_use_case.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/domain/destination_entity.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/domain/destination_failure.dart';

part 'destinations_list_bloc.freezed.dart';
part 'destinations_list_event.dart';
part 'destinations_list_state.dart';

class DestinationsListBloc
    extends Bloc<DestinationsListEvent, DestinationsListState> {
  final GetListDestinationsUseCase _getDestinationsUseCase;

  DestinationsListBloc(this._getDestinationsUseCase)
      : super(const DestinationsListState.initial()) {
    on<LoadDestinations>(_loadDestinationsOnStream, transformer: restartable());
    on<DeleteDestination>(_deleteDestination);
  }

  FutureOr<void> _loadDestinations(
      LoadDestinations event, Emitter<DestinationsListState> emit) async {
    emit(const DestinationsListState.loading());

    final result = await _getDestinationsUseCase.execute();

    final state = result.fold(
      DestinationsListState.error,
      DestinationsListState.success,
    );

    emit(state);
  }

  FutureOr<void> _loadDestinationsOnStream(
      LoadDestinations event, Emitter<DestinationsListState> emit) async {
    await emit.forEach(
      _getDestinationsUseCase.executeStream(),
      onData: (data) {
        return data.fold(
            DestinationsListState.error, DestinationsListState.success);
      },
    );
  }

  FutureOr<void> _deleteDestination(
    DeleteDestination event,
    Emitter<DestinationsListState> emit,
  ) {
    if (state case DestinationsListSuccess success) {
      final newState = success.copyWith(
        destinations: success.destinations
            .where((element) => element.id != event.id)
            .toList(),
      );

      emit(newState);
    }
  }
}
