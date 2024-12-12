import 'package:bloc/bloc.dart';

part 'dark_mode_state.dart';

class DarkModeCubit extends Cubit<ThemeModeState> {
  DarkModeCubit() : super(ThemeModeState.light);

  void changeTheme() {
    final newState = state == ThemeModeState.light
        ? ThemeModeState.dark
        : ThemeModeState.light;

    emit(newState);
  }
}
