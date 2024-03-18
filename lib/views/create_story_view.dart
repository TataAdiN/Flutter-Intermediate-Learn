import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_intermediate_learn/apps/states/create_story/create_story_state_picked_image.dart';
import 'package:image_picker/image_picker.dart';

import '../apps/blocs/create_story_bloc.dart';
import '../apps/events/create_story/create_story_event_pick_image.dart';
import '../apps/states/create_story/create_story_state.dart';
import '../utils/responsive_screen.dart';
import '../widgets/components/app_button.dart';
import '../widgets/components/app_text_area_field.dart';

class CreateStoryView extends StatelessWidget {
  CreateStoryView({super.key});

  final TextEditingController descController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CreateStoryBloc, CreateStoryState>(
      builder: (BuildContext context, CreateStoryState state) {
        ImageProvider<Object> image = const AssetImage(
          'assets/placeholder.png',
        );
        if (state is CreateStoryStatePickedImage) {
          image = FileImage(state.pickedImage);
        }
        return _createStoryLayout(context, imagePreview: image);
      },
      listener: (BuildContext context, CreateStoryState state) {},
    );
  }

  Scaffold _createStoryLayout(
    BuildContext context, {
    required ImageProvider<Object> imagePreview,
  }) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _imagePreview(context, imagePreview),
            _imagePickOption(context),
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

  Row _imagePickOption(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppButton(
          onClick: () => context.read<CreateStoryBloc>().add(
                CreateStoryEventPickImage(
                  source: ImageSource.camera,
                ),
              ),
          label: 'Camera',
          icon: Icons.camera_alt,
          color: Colors.blueGrey,
        ),
        const SizedBox(
          width: 12,
        ),
        AppButton(
          onClick: () => context.read<CreateStoryBloc>().add(
                CreateStoryEventPickImage(
                  source: ImageSource.gallery,
                ),
              ),
          label: 'Gallery',
          icon: Icons.collections,
          color: Colors.lightBlue,
        )
      ],
    );
  }

  Padding _imagePreview(
      BuildContext context, ImageProvider<Object> imagePreview) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        height: ResponsiveSize.fromWith(context, percentage: 50),
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.grey),
          shape: BoxShape.rectangle,
          borderRadius: const BorderRadius.all(
            Radius.circular(12),
          ),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: imagePreview,
          ),
        ),
      ),
    );
  }
}
