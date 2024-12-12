import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/application/create_destination_use_case.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/domain/destination_failure.dart';

part 'create_destination_bloc.freezed.dart';
part 'create_destination_event.dart';
part 'create_destination_state.dart';

class CreateDestinationBloc
    extends Bloc<CreateDestinationEvent, CreateDestinationState> {
  final CreateDestinationUseCase _createDestinationUseCase;

  CreateDestinationBloc(this._createDestinationUseCase)
      : super(const _Initial()) {
    on<_Create>((event, emit) async {
      emit(const CreateDestinationState.loading());

      final result = await _createDestinationUseCase.execute(
        countryFrom: event.countryFrom,
        countryTo: event.countryTo,
        primaryPrice: event.primaryPrice,
        secondaryPrice: event.secondaryPrice,
      );

      result.fold(
        (failure) => emit(CreateDestinationState.error(failure)),
        (_) => emit(const CreateDestinationState.success()),
      );
    });
  }
}
