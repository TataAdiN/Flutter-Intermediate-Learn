import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Advanced Widgets Learning"),
      ),
      body: ListView(
        children: [
          menuCard(
            title: "Animation",
            desc: "Implicit Animation",
            onTap: () => Navigator.of(context).pushNamed('/implicit'),
          ),
          menuCard(
            title: "Animation",
            desc: "Explicit Animation",
            onTap: () => Navigator.of(context).pushNamed('/explicit'),
          ),
          menuCard(
            title: "Animation",
            desc: "Custom Painter Animation",
            onTap: () {},
          ),
          menuCard(
            title: "Feature",
            desc: "Infinity Scrolling",
            onTap: () {},
          )
        ],
      ),
    );
  }

  InkWell menuCard(
      {required String title,
      required String desc,
      required VoidCallback onTap}) {
    return InkWell(
      onTap: () => onTap(),
      child: Card(
        shadowColor: Colors.grey,
        elevation: 1,
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title),
              Text(
                desc,
                style: const TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
