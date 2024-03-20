import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_intermediate_learn/l10n/localizations.dart';
import 'package:flutter_intermediate_learn/utils/responsive_screen.dart';
import 'package:flutter_intermediate_learn/widgets/parts/error_with_retry_widget.dart';
import 'package:go_router/go_router.dart';

import '../apps/blocs/stories_bloc.dart';
import '../apps/data/enums/client_error_type.dart';
import '../apps/data/models/story.dart';
import '../apps/events/stories/stories_event_fetch.dart';
import '../apps/states/stories/stories_state.dart';
import '../apps/states/stories/stories_state_error.dart';
import '../apps/states/stories/stories_state_loaded.dart';
import '../routes/app_route.dart';
import '../widgets/parts/greeting_widget.dart';
import '../widgets/story_card.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    StoriesBloc storiesBloc = context.read<StoriesBloc>();
    AppLocalizations localizations = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Stories'),
        actions: [
          IconButton(
            onPressed: () async {
              bool created =
                  await context.pushNamed(AppRoute.createStory) ?? false;
              if (created) {
                storiesBloc.add(StoriesEventFetch());
              }
            },
            icon: const Icon(Icons.add_photo_alternate_outlined),
            tooltip: "Upload",
          ),
          IconButton(
            onPressed: () => context.pushNamed(AppRoute.settings),
            icon: const Icon(Icons.settings),
            tooltip: "Settings",
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.dark,
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const GreetingWidget(),
              BlocConsumer<StoriesBloc, StoriesState>(
                builder: (context, state) {
                  if (state is StoriesStateError) {
                    if (state.errorType == ClientErrorType.noInternet) {
                      return Padding(
                        padding: EdgeInsets.only(
                          top: ResponsiveSize.fromWith(context, percentage: 50),
                        ),
                        child: ErrorWithRetryWidget(
                          onRetry: () => storiesBloc.add(StoriesEventFetch()),
                          title: localizations.noInternet,
                          message: state.message,
                        ),
                      );
                    } else {
                      return Padding(
                        padding: EdgeInsets.only(
                          top: ResponsiveSize.fromWith(context, percentage: 50),
                        ),
                        child: ErrorWithRetryWidget(
                          onRetry: () => storiesBloc.add(StoriesEventFetch()),
                          title: localizations.somethingWrong,
                          message: state.message,
                        ),
                      );
                    }
                  }
                  List<Story> stories = [];
                  if (state is StoriesStateLoaded) {
                    stories = state.stories;
                    if (stories.isEmpty) {
                      return Padding(
                        padding: EdgeInsets.only(
                          top: ResponsiveSize.fromWith(context, percentage: 50),
                        ),
                        child: ErrorWithRetryWidget(
                          onRetry: () => storiesBloc.add(StoriesEventFetch()),
                          title: localizations.emptyStories,
                          message: localizations.emptyStoriesFix,
                        ),
                      );
                    }
                  }
                  return storiesWidget(stories);
                },
                listener: (BuildContext context, StoriesState state) {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  ListView storiesWidget(List<Story> stories) {
    return ListView.builder(
      primary: false,
      shrinkWrap: true,
      itemCount: stories.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 0,
            vertical: 10,
          ),
          child: StoryCard(story: stories[index]),
        );
      },
    );
  }
}
