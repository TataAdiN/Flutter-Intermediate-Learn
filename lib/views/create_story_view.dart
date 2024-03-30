import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:image_picker/image_picker.dart';

import '../apps/blocs/create_story_bloc.dart';
import '../apps/data/enums/app_button_align.dart';
import '../apps/data/enums/client_error_type.dart';
import '../apps/events/create_story/create_story_event_create.dart';
import '../apps/events/create_story/create_story_event_pick_image.dart';
import '../apps/states/create_story/create_story_state.dart';
import '../apps/states/create_story/create_story_state_created.dart';
import '../apps/states/create_story/create_story_state_error.dart';
import '../apps/states/create_story/create_story_state_loading.dart';
import '../apps/states/create_story/create_story_state_picked_image.dart';
import '../l10n/localizations.dart';
import '../routes/app_route.dart';
import '../utils/responsive_screen.dart';
import '../widgets/components/app_button.dart';
import '../widgets/components/app_text_area_field.dart';
import '../widgets/components/app_text_field.dart';
import '../widgets/dialogs/app_error_alert_dialog.dart';
import '../widgets/dialogs/app_show_dialog.dart';
import '../widgets/dialogs/app_success_alert_dialog.dart';
import '../widgets/fullscreen_app_loading.dart';
import 'widgets/image_preview.dart';

class CreateStoryView extends StatelessWidget {
  CreateStoryView({super.key});

  final TextEditingController descController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final GlobalKey<FormState> formKeyCreate = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    ImageProvider<Object> image = const AssetImage('assets/placeholder.png');
    return BlocConsumer<CreateStoryBloc, CreateStoryState>(
      builder: (BuildContext context, CreateStoryState state) {
        if (state is CreateStoryStatePickedImage) {
          image = FileImage(state.pickedImage);
        }
        if (state is CreateStoryStateLoading) {
          return Scaffold(
            body: FullscreenAppLoading(message: state.message),
          );
        }
        return _createStoryLayout(context, imagePreview: image);
      },
      listener: (BuildContext context, CreateStoryState state) {
        if (state is CreateStoryStateError) {
          if (state.errorType == ClientErrorType.noInternet) {
            showAppDialog(context,
                dialog: appErrorAlertDialog(
                  context,
                  title: AppLocalizations.of(context)!.noInternet,
                  message: state.message,
                ));
          } else {
            showAppDialog(context,
                dialog: appErrorAlertDialog(
                  context,
                  message: state.message,
                ));
          }
        } else if (state is CreateStoryStateCreated) {
          showAppDialog(context,
              dialog: appSuccessAlertDialog(
                context,
                message: AppLocalizations.of(context)!.storyCreated,
                popRoute: true,
              ));
        }
      },
    );
  }

  Scaffold _createStoryLayout(
    BuildContext context, {
    required ImageProvider<Object> imagePreview,
  }) {
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.createStory)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImagePreview(image: imagePreview),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: AppTextField(
                    readOnly: true,
                    controller: locationController,
                    title: 'Latitude & Longitude',
                    errorText: "Location can't be empty",
                  ),
                ),
                const SizedBox(width: 8),
                AppButton(
                  align: AppButtonAlign.center,
                  onClick: () async {
                    LatLng? latLng =
                        await context.pushNamed(AppRoute.pickLocation);
                    if (latLng != null) {
                      locationController.text =
                          "${latLng.latitude},${latLng.longitude}";
                    }
                  },
                  label: '',
                  icon: Icons.edit_location_alt,
                  color: Colors.green,
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: AppButton(
              onClick: () {
                if (formKeyCreate.currentState!.validate()) {
                  context.read<CreateStoryBloc>().add(
                        CreateStoryEventAction(
                          description: descController.text,
                          latlng: locationController.text,
                        ),
                      );
                }
              },
              label: AppLocalizations.of(context)!.createStory,
              icon: Icons.add_photo_alternate_outlined,
              color: Colors.blueAccent,
              width: ResponsiveSize.fromWidth(context, percentage: 36),
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
          onClick: () => context
              .read<CreateStoryBloc>()
              .add(CreateStoryEventPickImage(source: ImageSource.camera)),
          label: AppLocalizations.of(context)!.camera,
          icon: Icons.camera_alt,
          color: Colors.blueGrey,
        ),
        const SizedBox(width: 12),
        AppButton(
          onClick: () => context
              .read<CreateStoryBloc>()
              .add(CreateStoryEventPickImage(source: ImageSource.gallery)),
          label: AppLocalizations.of(context)!.gallery,
          icon: Icons.collections,
          color: Colors.lightBlue,
        )
      ],
    );
  }
}
