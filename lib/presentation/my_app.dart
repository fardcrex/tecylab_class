import 'package:flutter/material.dart';
import 'package:tecylab_clase_04/core/theme/app_theme.dart';
import 'package:tecylab_clase_04/feature/destinations/domain/get_destinations_use_case.dart';
import 'package:tecylab_clase_04/presentation/destination/destinations_list/destinations_list_page.dart';
import 'package:themexpert/themexpert.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool darkMode = false;

  void changeDarkMode() {
    setState(() {
      darkMode = !darkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ThemeXConfiguration(
        darkMode: darkMode,
        builder: (context) {
          return ThemeXWrapper(
              theme: AppTheme(context),
              builder: (context) {
                return MaterialApp(
                  home: SafeArea(
                      child: DestinationsListPage(
                    darkMode: darkMode,
                    onTap: changeDarkMode,
                    getDestinationsUseCase: const GetDestinationsUseCase(),
                  )),
                );
              });
        });
  }
}
