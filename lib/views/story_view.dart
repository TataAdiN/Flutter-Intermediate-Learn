import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../apps/blocs/story_bloc.dart';
import '../apps/data/enums/client_error_type.dart';
import '../apps/data/models/story.dart';
import '../apps/events/story/story_event_find.dart';
import '../apps/states/story/story_state.dart';
import '../apps/states/story/story_state_error.dart';
import '../apps/states/story/story_state_loaded.dart';
import '../apps/states/story/story_state_not_found.dart';
import '../l10n/localizations.dart';
import '../utils/responsive_screen.dart';
import '../widgets/fullscreen_app_error.dart';
import '../widgets/fullscreen_app_loading.dart';
import 'widgets/maps/location_viewer.dart';

class StoryView extends StatelessWidget {
  const StoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoryBloc, StoryState>(
      builder: (
        BuildContext context,
        StoryState state,
      ) {
        if (state is StoryStateLoaded) {
          return storyLayout(context, story: state.story);
        } else if (state is StoryStateNotFound) {
          return fullScreenAppError(context,
              message: state.message,
              withRetry: false,
              title: AppLocalizations.of(context)!.somethingWrong);
        } else if (state is StoryStateError) {
          String title = AppLocalizations.of(context)!.somethingWrong;
          if (state.errorType == ClientErrorType.noInternet) {
            title = AppLocalizations.of(context)!.noInternet;
          }
          return fullScreenAppError(
            context,
            message: state.message,
            withRetry: true,
            title: title,
            onRetry: () => context
                .read<StoryBloc>()
                .add(StoryEventFind(id: state.storyId)),
          );
        }
        return Scaffold(
          body: FullscreenAppLoading(message: state.message),
        );
      },
    );
  }

  Scaffold storyLayout(
    BuildContext context, {
    required Story story,
  }) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: Text(AppLocalizations.of(context)!.story),
      ),
      backgroundColor: const Color.fromARGB(255, 245, 245, 245),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 12),
            storyAuthorAndImageCard(context, story: story),
            const SizedBox(height: 12),
            storyDescriptionCard(context, description: story.description),
            const SizedBox(height: 12),
            storyLocationCard(context, story.lat, story.lon),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }

  SizedBox storyLocationCard(BuildContext context, dynamic lat, dynamic lon) {
    return storyCard(
      widget: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Story Location",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            if (lat != null)
              LocationViewer(latitude: lat, longitude: lon)
            else
              const Center(
                child: Text("Story doesn't have location information"),
              ),
          ],
        ),
      ),
    );
  }

  SizedBox storyDescriptionCard(
    BuildContext context, {
    required String description,
  }) {
    return storyCard(
      widget: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.storyDescription,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              description,
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }

  SizedBox storyAuthorAndImageCard(
    BuildContext context, {
    required Story story,
  }) {
    return storyCard(
      widget: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Text(
                  AppLocalizations.of(context)!.storyFrom,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 4),
                Text(
                  story.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: ResponsiveSize.fromWidth(context, percentage: 50),
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.grey),
              shape: BoxShape.rectangle,
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  story.photoUrl,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  SizedBox storyCard({required Widget widget}) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
        elevation: 1,
        shadowColor: Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        color: Colors.white,
        child: widget,
      ),
    );
  }
}
