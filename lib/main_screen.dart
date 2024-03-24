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
            title: "Code Generator",
            desc: "JSON Serialization Generator",
            onTap: () => Navigator.of(context).pushNamed('/json_serialize'),
          ),
          menuCard(
            title: "Code Generator",
            desc: "Union Generator",
            onTap: () => Navigator.of(context).pushNamed('/union'),
          ),
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
