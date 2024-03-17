import 'package:flutter/material.dart';

import '../utils/responsive_screen.dart';
import '../widgets/components/app_button.dart';
import '../widgets/components/app_text_area_field.dart';

class CreateStoryView extends StatelessWidget {
  CreateStoryView({super.key});

  final TextEditingController descController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: ResponsiveSize.fromWith(context, percentage: 50),
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
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: AppTextAreaField(
                controller: descController,
                title: 'Description',
                errorText: "Description can't be empty",
              ),
            ),
            Center(
              child: AppButton(
                onClick: () {},
                label: 'Create Story',
                icon: Icons.add_photo_alternate_outlined,
                color: Colors.blueAccent,
                width: ResponsiveSize.fromWith(context, percentage: 36),
              ),
            )
          ],
        ),
      ),
    );
  }
}
