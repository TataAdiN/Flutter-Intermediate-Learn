import 'package:flutter/material.dart';

import 'main_screen.dart';
import 'pages/json_serialize/json_serialize_page.dart';
import 'pages/union/union_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Local Storage',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: Theme.of(context).colorScheme.copyWith(
              primary: Colors.white,
              onPrimary: Colors.black,
              secondary: Colors.orange,
            ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MainScreen(),
        '/json_serialize': (context) => const JsonSerializePage(),
        '/union': (context) => const UnionPage(),
      },
    );
  }
}
