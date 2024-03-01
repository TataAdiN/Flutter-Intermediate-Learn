import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_intermediate_learn/screens/basic_screen.dart';

import 'list_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationView(
      appBar: const NavigationAppBar(
        title: Text("Fluent Design App"),
        automaticallyImplyLeading: false,
      ),
      pane: NavigationPane(
        items: [
          PaneItem(
            icon: const Icon(FluentIcons.page),
            body: const BasicScreen(),
            title: const Text("Basic Screen"),
          ),
          PaneItem(
            icon: const Icon(FluentIcons.custom_list),
            body: const ListScreen(),
            title: const Text("List Screen"),
          ),
        ],
        selected: index,
        onChanged: (value) {
          setState(() {
            index = value;
          });
        },
      ),
    );
  }
}
