import 'package:flutter/material.dart';
import 'package:tecylab_clase_04/presentation/destination/destinations_list/destinations_list_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          primary: const Color(0xFF6617A3),
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 33, 76, 231),
          ),
          bodyLarge: TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ),
      routes: {
        '/destination': (context) => const DestinationsListPage(),
      },
      home: const SafeArea(child: DestinationsListPage()),
    );
  }
}
