import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tecylab_clase_04/core/router/go_router/go_router_config.dart';
import 'package:tecylab_clase_04/core/theme/app_theme.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/application/create_destination_use_case.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/application/delete_destination_use_case.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/application/get_list_destinations_use_case.dart';
import 'package:tecylab_clase_04/feature/destinations_ddd/domain/interface_destination_repository.dart';
import 'package:tecylab_clase_04/presentation/create_destination/bloc/create_destination_bloc.dart';
import 'package:tecylab_clase_04/presentation/destination/destination_detail/bloc/destination_delete_dart_bloc.dart';
import 'package:tecylab_clase_04/presentation/destination/destinations_list/bloc/destinations_list_bloc.dart';
import 'package:tecylab_clase_04/presentation/destination/destinations_list/cubit/destionations_list_cubit.dart';
import 'package:tecylab_clase_04/presentation/main/cubit/dark_mode_cubit.dart';
import 'package:themexpert/themexpert.dart';

class MyApp extends StatelessWidget {
  final InterfaceDestinationRepository destinationRepository;

  const MyApp({
    super.key,
    required this.router,
    required this.destinationRepository,
  });

  final GoRouterConfig router;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DarkModeCubit(),
      child: BlocBuilder<DarkModeCubit, ThemeModeState>(
        builder: (context, state) {
          return ThemeXConfiguration(
              darkMode: state == ThemeModeState.dark,
              builder: (context) {
                return ThemeXWrapper(
                    theme: AppTheme(context),
                    builder: (context) {
                      return RepositoryProvider(
                        create: (context) =>
                            GetListDestinationsUseCase(destinationRepository),
                        child: MultiBlocProvider(
                          providers: [
                            BlocProvider(
                              create: (context) => DestionationsListCubit(
                                context.read<GetListDestinationsUseCase>(),
                              ),
                            ),
                            BlocProvider(
                              create: (context) => DestinationsListBloc(
                                context.read<GetListDestinationsUseCase>(),
                              )..add(const DestinationsListEvent.load(
                                  withError: false)),
                            ),
                            BlocProvider(
                              create: (context) => CreateDestinationBloc(
                                  CreateDestinationUseCase(
                                      destinationRepository)),
                            ),
                            BlocProvider(
                              create: (context) => DestinationDeleteBloc(
                                  DeleteDestinationUseCase(
                                      destinationRepository)),
                            ),
                          ],
                          child: MaterialApp.router(
                            title: 'Flutter Demo',
                            routeInformationProvider:
                                router.goRouter.routeInformationProvider,
                            routeInformationParser:
                                router.goRouter.routeInformationParser,
                            routerDelegate: router.goRouter.routerDelegate,
                          ),
                        ),
                      );
                    });
              });
        },
      ),
    );
  }
}
