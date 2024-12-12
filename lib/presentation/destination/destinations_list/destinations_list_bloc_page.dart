import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tecylab_clase_04/presentation/destination/destinations_list/bloc/destinations_list_bloc.dart';
import 'package:tecylab_clase_04/presentation/destination/destinations_list/destination_model.dart';
import 'package:tecylab_clase_04/presentation/destination/destinations_list/destinations_list_page_listener.dart';
import 'package:tecylab_clase_04/presentation/destination/destinations_list/views/destination_data_view.dart';
import 'package:tecylab_clase_04/presentation/destination/destinations_list/views/destination_empty_view.dart';
import 'package:tecylab_clase_04/presentation/destination/destinations_list/views/destination_error_view.dart';
import 'package:tecylab_clase_04/presentation/destination/destinations_list/views/destination_initial_view.dart';
import 'package:tecylab_clase_04/presentation/destination/destinations_list/views/destination_loading_view.dart';
import 'package:tecylab_clase_04/presentation/destination/destinations_list/widgets/scaffold_destinations.dart';
import 'package:tecylab_clase_04/presentation/main/cubit/dark_mode_cubit.dart';

class DestinationsListBlocPage extends StatelessWidget {
  const DestinationsListBlocPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DestinationsListPageListener(
      child: BlocBuilder<DestinationsListBloc, DestinationsListState>(
        builder: (context, state) {
          return ScaffoldDestinations(
              onTap: () {
                context.read<DarkModeCubit>().changeTheme();
              },
              darkMode:
                  context.watch<DarkModeCubit>().state == ThemeModeState.dark,
              child: switch (state) {
                final DestinationsListInitial _ => DestinationInitialView(
                    onTap: () => context.read<DestinationsListBloc>().add(
                        const DestinationsListEvent.load(withError: true))),
                final DestinationsListLoading _ =>
                  const DestinationLoadingView(),
                final DestinationsListError error => DestinationErrorView(
                    failure: error.failure,
                    onTap: () => context.read<DestinationsListBloc>().add(
                        const DestinationsListEvent.load(withError: false))),
                final DestinationsListSuccess success
                    when success.destinations.isEmpty =>
                  const DestinationEmptyView(),
                final DestinationsListSuccess success => DestinationDataView(
                    destinations: success.destinations
                        .map((entity) => entity.toModel(context))
                        .toList(),
                  ),
              });
        },
      ),
    );
  }
}
