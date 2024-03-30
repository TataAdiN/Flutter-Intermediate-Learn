import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'pick_location_event.dart';

class PickLocationEventLongPress implements PickLocationEvent {
  LatLng latLng;
  PickLocationEventLongPress({required this.latLng});
}
