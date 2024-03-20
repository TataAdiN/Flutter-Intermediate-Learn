import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../apps/blocs/create_story_bloc.dart';
import '../apps/events/create_story/create_story_event_create.dart';
import '../apps/events/create_story/create_story_event_pick_image.dart';
import '../apps/states/create_story/create_story_state.dart';
import '../apps/states/create_story/create_story_state_created.dart';
import '../apps/states/create_story/create_story_state_error.dart';
import '../apps/states/create_story/create_story_state_loading.dart';
import '../apps/states/create_story/create_story_state_picked_image.dart';
import '../l10n/localizations.dart';
import '../utils/responsive_screen.dart';
import '../widgets/components/app_button.dart';
import '../widgets/components/app_text_area_field.dart';
import '../widgets/dialogs/app_error_alert_dialog.dart';
import '../widgets/dialogs/app_show_dialog.dart';
import '../widgets/dialogs/app_success_alert_dialog.dart';
import '../widgets/fullscreen_app_loading.dart';

class CreateStoryView extends StatelessWidget {
  CreateStoryView({super.key});

  final TextEditingController descController = TextEditingController();
  final GlobalKey<FormState> formKeyCreate = GlobalKey<FormState>();

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
        if (state is CreateStoryStateLoading) {
          return Scaffold(
            body: FullscreenAppLoading(
              message: state.message,
            ),
          );
        }
        return _createStoryLayout(context, imagePreview: image);
      },
      listener: (BuildContext context, CreateStoryState state) {
        if (state is CreateStoryStateError) {
          showAppDialog(
            context,
            dialog: AppErrorAlertDialog(message: state.message),
          );
        } else if (state is CreateStoryStateCreated) {
          showAppDialog(
            context,
            dialog: AppSuccessAlertDialog(
              message: AppLocalizations.of(context)!.storyCreated,
              popRoute: true,
            ),
          );
        }
      },
    );
  }

  Scaffold _createStoryLayout(
    BuildContext context, {
    required ImageProvider<Object> imagePreview,
  }) {
    return createStoryLayout(context, imagePreview);
  }

  Scaffold createStoryLayout(
      BuildContext context, ImageProvider<Object> imagePreview) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.createStory),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _imagePreview(context, imagePreview),
            _imagePickOption(context),
            _formCreateStory(context)
          ],
        ),
      ),
    );
  }

  Form _formCreateStory(BuildContext context) {
    return Form(
      key: formKeyCreate,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: AppTextAreaField(
              controller: descController,
              title: AppLocalizations.of(context)!.description,
              errorText: AppLocalizations.of(context)!.failNoDescription,
            ),
          ),
          Center(
            child: AppButton(
              onClick: () {
                if (formKeyCreate.currentState!.validate()) {
                  context.read<CreateStoryBloc>().add(
                        CreateStoryEventAction(
                          description: descController.text,
                        ),
                      );
                }
              },
              label: AppLocalizations.of(context)!.createStory,
              icon: Icons.add_photo_alternate_outlined,
              color: Colors.blueAccent,
              width: ResponsiveSize.fromWith(context, percentage: 36),
            ),
          )
        ],
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
          label: AppLocalizations.of(context)!.camera,
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
          label: AppLocalizations.of(context)!.gallery,
          icon: Icons.collections,
          color: Colors.lightBlue,
        )
      ],
    );
  }

  Padding _imagePreview(
    BuildContext context,
    ImageProvider<Object> imagePreview,
  ) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        height: ResponsiveSize.fromWith(
          context,
          percentage: 50,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: Colors.grey,
          ),
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
