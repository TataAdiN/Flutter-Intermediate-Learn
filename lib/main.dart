import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'data/apis/api_service.dart';
import 'providers/home_provider.dart';
import 'providers/upload_provider.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => UploadProvider(
            ApiService(),
          ),
        ),
      ],
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
