import 'package:flutter/material.dart';

import 'main_screen.dart';
import 'pages/explicit/explicit_animation_screen.dart';
import 'pages/implicit/implicit_animation_screen.dart';

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
        '/implicit': (context) => ImplicitAnimationScreen(),
        '/explicit': (context) => ExplicitAnimationScreen(),
      },
    );
  }
}
