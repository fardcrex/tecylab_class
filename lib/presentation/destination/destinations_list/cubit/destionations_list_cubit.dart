import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/application/get_list_destinations_use_case.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/domain/destination_entity.dart';

part 'destionations_list_state.dart';

class DestionationsListCubit extends Cubit<DestionationsListState> {
  final GetListDestinationsUseCase _getDestinationsUseCase;

  DestionationsListCubit(this._getDestinationsUseCase)
      : super(DestionationsListState.initial());

  void loadDestinations({required bool withError}) async {
    emit(DestionationsListState.loading());

    final result = await _getDestinationsUseCase.execute();

    final state = result.fold(
      (failure) => DestionationsListState.error(failure.toString()),
      DestionationsListState.success,
    );
    emit(state);
  }
}
