import 'package:flutter/material.dart';
import 'package:flutter_intermediate_learn/widgets/components/app_text_field.dart';

import '../widgets/components/app_button.dart';

class CreateStoryView extends StatelessWidget {
  const CreateStoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.grey),
                shape: BoxShape.rectangle,
                borderRadius: const BorderRadius.all(
                  Radius.circular(12),
                ),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/placeholder.png'),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppButton(
                onClick: () {},
                label: 'Camera',
                icon: Icons.camera_alt,
                color: Colors.blueGrey,
              ),
              const SizedBox(
                width: 12,
              ),
              AppButton(
                onClick: () {},
                label: 'Gallery',
                icon: Icons.collections,
                color: Colors.lightBlue,
              )
            ],
          ),
          AppTextField(title: 'Description', errorText: 'errorText'),
          Center(
            child: AppButton(
              onClick: () {},
              label: 'Create Story',
              icon: Icons.add_photo_alternate_outlined,
              color: Colors.blueAccent,
              width: MediaQuery.of(context).size.width * (36 / 100),
            ),
          )
        ],
      ),
    );
  }
}
