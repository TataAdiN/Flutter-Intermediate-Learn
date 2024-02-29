import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'apps/common.dart';
import 'providers/localizations_provider.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LocalizationProvider>(
      create: (context) => LocalizationProvider(),
      builder: (context, child) {
        final provider = Provider.of<LocalizationProvider>(context);
        return MaterialApp(
          locale: provider.locale,
          title: 'Flutter Localization & Accessibility',
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          theme: ThemeData(
            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
            ),
            scaffoldBackgroundColor: Colors.grey.shade50,
            outlinedButtonTheme: OutlinedButtonThemeData(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey.shade800,
                foregroundColor: Colors.white,
              ),
            ),
          ),
          home: const HomePage(),
        );
      },
    );
  }
}
