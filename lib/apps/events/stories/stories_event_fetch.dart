import 'stories_event.dart';

class StoriesEventFetch extends StoriesEvent {
  bool withReload;
  StoriesEventFetch({this.withReload = true});
}
