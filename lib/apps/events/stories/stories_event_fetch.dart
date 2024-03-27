import 'stories_event.dart';

class StoriesEventFetch extends StoriesEvent {
  bool reloadOnly;
  StoriesEventFetch({this.reloadOnly = true});
}
