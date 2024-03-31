import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart' as geocoding;
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'pick_location_state.freezed.dart';

@freezed
class PickLocationState with _$PickLocationState {
  const factory PickLocationState.init() = PickLocationStateInit;
  const factory PickLocationState.newLatLng({
    required LatLng newLatLng,
    required Set<Marker> marker,
    required geocoding.Placemark placeMark,
  }) = PickLocationStateNewLatLng;
  const factory PickLocationState.fail({
    required String message,
    required String title,
  }) = PickLocationStateFail;
}
