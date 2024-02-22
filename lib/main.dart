import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/video_provider.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => VideoProvider(),
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
