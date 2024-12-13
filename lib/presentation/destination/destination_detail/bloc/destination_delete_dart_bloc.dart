import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/application/delete_destination_use_case.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/domain/destination_failure.dart';

part 'destination_delete_dart_bloc.freezed.dart';
part 'destination_delete_dart_event.dart';
part 'destination_delete_dart_state.dart';

class DestinationDeleteBloc
    extends Bloc<DestinationDeleteEvent, DestinationDeleteState> {
  final DeleteDestinationUseCase _deleteDestinationUseCase;

  DestinationDeleteBloc(this._deleteDestinationUseCase)
      : super(const _Initial()) {
    on<_DeleteDestination>(_deleteDestination);
  }

  FutureOr<void> _deleteDestination(
    _DeleteDestination event,
    Emitter<DestinationDeleteState> emit,
  ) async {
    emit(const DestinationDeleteState.loading());

    final result = await _deleteDestinationUseCase.execute(event.id);

    final newState = result.fold(
      DestinationDeleteState.error,
      (_) => const DestinationDeleteState.success(),
    );

    emit(newState);
  }
}
