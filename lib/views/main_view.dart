import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_intermediate_learn/utils/paginate.dart';
import 'package:go_router/go_router.dart';

import '../apps/blocs/stories_bloc.dart';
import '../apps/data/enums/client_error_type.dart';
import '../apps/data/models/story.dart';
import '../apps/events/stories/stories_event_fetch.dart';
import '../apps/states/stories/stories_state.dart';
import '../apps/states/stories/stories_state_error.dart';
import '../apps/states/stories/stories_state_loaded.dart';
import '../apps/states/stories/stories_state_loading.dart';
import '../l10n/localizations.dart';
import '../routes/app_route.dart';
import '../utils/responsive_screen.dart';
import '../widgets/parts/error_with_retry_widget.dart';
import '../widgets/parts/greeting_widget.dart';
import 'widgets/stories_shimmer.dart';
import 'widgets/story_card.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  final ScrollController scrollController =
      ScrollController(initialScrollOffset: 0);

  @override
  void initState() {
    super.initState();
    scrollController.addListener(_listenScroll);
  }

  void _listenScroll() {
    double scrollPosition = scrollController.position.pixels;
    double maxScrollPosition = scrollController.position.maxScrollExtent;
    if (scrollPosition >= maxScrollPosition) {
      context.read<StoriesBloc>().add(StoriesEventFetch(withReload: false));
    }
  }

  @override
  Widget build(BuildContext context) {
    StoriesBloc storiesBloc = context.read<StoriesBloc>();
    AppLocalizations localizations = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
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
        child: Column(
          children: [
            const GreetingWidget(),
            BlocConsumer<StoriesBloc, StoriesState>(
              builder: (context, state) {
                if (state is StoriesStateError) {
                  if (state.errorType == ClientErrorType.noInternet) {
                    return Padding(
                      padding: EdgeInsets.only(
                        top: ResponsiveSize.fromWidth(context, percentage: 50),
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
                        top: ResponsiveSize.fromWidth(context, percentage: 50),
                      ),
                      child: ErrorWithRetryWidget(
                        onRetry: () => storiesBloc.add(StoriesEventFetch()),
                        title: localizations.somethingWrong,
                        message: state.message,
                      ),
                    );
                  }
                } else if (state is StoriesStateLoading) {
                  return const StoriesShimmer();
                }
                List<Story> stories = [];
                if (state is StoriesStateLoaded) {
                  state.paginate;
                  stories = state.stories;
                  if (stories.isEmpty) {
                    return Padding(
                      padding: EdgeInsets.only(
                        top: ResponsiveSize.fromWidth(context, percentage: 50),
                      ),
                      child: ErrorWithRetryWidget(
                        onRetry: () => storiesBloc.add(StoriesEventFetch()),
                        title: localizations.emptyStories,
                        message: localizations.emptyStoriesFix,
                      ),
                    );
                  }
                  return storiesWidget(stories, state.paginate);
                }
               return const SizedBox();
              },
              listener: (BuildContext context, StoriesState state) {},
            ),
          ],
        ),
      ),
    );
  }

  Expanded storiesWidget(List<Story> stories, Paginate paginate) {
    return Expanded(
      child: ListView.builder(
        controller: scrollController,
        itemCount: stories.length + (paginate.page != 0 ? 1 : 0 ),
        itemBuilder: (BuildContext context, int index) {
          if (index == stories.length && paginate.page != 0) {
            return const StoriesShimmer();
          }
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 0,
              vertical: 8,
            ),
            child: StoryCard(story: stories[index]),
          );
        },
      ),
    );
  }
}
