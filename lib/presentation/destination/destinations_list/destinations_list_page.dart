import 'package:flutter/material.dart';
import 'package:tecylab_clase_04/core/theme/app_theme.dart';
import 'package:tecylab_clase_04/feature/destinations/domain/get_destinations_use_case.dart';
import 'package:tecylab_clase_04/presentation/destination/destinations_list/destination_model.dart';
import 'package:tecylab_clase_04/presentation/destination/destinations_list/state/destination_state.dart';
import 'package:tecylab_clase_04/presentation/destination/destinations_list/views/destination_data_view.dart';
import 'package:tecylab_clase_04/presentation/destination/destinations_list/views/destination_empty_view.dart';
import 'package:tecylab_clase_04/presentation/destination/destinations_list/views/destination_error_view.dart';
import 'package:tecylab_clase_04/presentation/destination/destinations_list/views/destination_initial_view.dart';
import 'package:tecylab_clase_04/presentation/destination/destinations_list/views/destination_loading_view.dart';

class DestinationsListPage extends StatefulWidget {
  final VoidCallback onTap;
  final bool darkMode;
  final GetDestinationsUseCase getDestinationsUseCase;

  const DestinationsListPage({
    super.key,
    required this.onTap,
    required this.darkMode,
    required this.getDestinationsUseCase,
  });

  @override
  State<DestinationsListPage> createState() => _DestinationsListPageState();
}

class _DestinationsListPageState extends State<DestinationsListPage> {
  DestinationState state = DestinationState.initial();

  void loadDestinations({required bool withError}) async {
    setState(() => state = DestinationState.loading());

    final result = await widget.getDestinationsUseCase.execute(withError);

    state = result.hasError
        ? DestinationState.error(result.error)
        : DestinationState.success(result.destinations);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'Vuelos a todo el mundo',
            style: themeOf(context).titleText,
          ),
          actions: [
            IconButton(
              onPressed: widget.onTap,
              icon: Icon(
                Icons.brightness_4,
                color: widget.darkMode ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
        backgroundColor: themeOf(context).backgroundScaffold,
        body: switch (state) {
          final DestinationInitial _ => DestinationInitialView(
              onTap: () => loadDestinations(withError: true)),
          final DestinationLoading _ => const DestinationLoadingView(),
          final DestinationError error => DestinationErrorView(
              errorMessage: error.message,
              onTap: () => loadDestinations(withError: false)),
          final DestinationSuccess success when success.destinations.isEmpty =>
            const DestinationEmptyView(),
          final DestinationSuccess success => DestinationDataView(
              destinations: success.destinations
                  .map((entity) => entity.toModel(context))
                  .toList(),
            ),
        });
  }
}
