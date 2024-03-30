import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geocoding/geocoding.dart' as geocoding;

import 'pick_location_state.dart';

class PickLocationStateNewLatLng extends PickLocationState {
  LatLng newLatLng;
  Set<Marker> marker;
  geocoding.Placemark placeMark;

  PickLocationStateNewLatLng({
    required this.newLatLng,
    required this.marker,
    required this.placeMark,
  });
}
