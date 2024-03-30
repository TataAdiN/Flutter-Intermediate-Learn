import 'pick_location_state.dart';

class PickLocationStateFail extends PickLocationState {
  String title;
  PickLocationStateFail({required String message, required this.title}) {
    this.message = message;
  }
}
