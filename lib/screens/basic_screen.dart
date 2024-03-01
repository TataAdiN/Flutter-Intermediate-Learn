import 'package:fluent_ui/fluent_ui.dart';

import 'list_screen.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NavigationView(
      content: ScaffoldPage(
        header: const PageHeader(
          title: Text("This is Home Screen"),
        ),
        content: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
                    "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor"
                    " in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, "
                    "sunt in culpa qui officia deserunt mollit anim id est laborum.",
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Button(
                    child: const Text('List Screen'),
                    onPressed: () {
                      Navigator.push(context,          FluentPageRoute(
                        builder: (context) {
                          return const ListScreen();
                        },
                      ));
                    },
                  ),
                  HyperlinkButton(
                    child: const Text('Text Button'),
                    onPressed: () {},
                  ),
                  FilledButton(
                    child: const Text('Filled Button'),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
