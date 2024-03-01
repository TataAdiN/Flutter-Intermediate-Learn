import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_intermediate_learn/screens/home_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const FluentApp(
      home: HomeScreen(),
    );
  }
}
