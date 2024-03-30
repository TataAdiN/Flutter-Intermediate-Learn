import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geocoding/geocoding.dart' as geocoding;

import '../../l10n/localizations.dart';
import '../events/pick_location/pick_location_event.dart';
import '../events/pick_location/pick_location_event_gps.dart';
import '../events/pick_location/pick_location_event_longpress.dart';
import '../states/pick_location/pick_location_state.dart';
import '../states/pick_location/pick_location_state_init.dart';
import '../states/pick_location/pick_location_state_new_latlng.dart';

class PickLocationBloc extends Bloc<PickLocationEvent, PickLocationState> {
  AppLocalizations localization;

  PickLocationBloc({required this.localization})
      : super(PickLocationStateInit()) {
    on<PickLocationEventGPS>(_gpsLocation);
    on<PickLocationEventLongPress>(_longPressLocation);
  }

  void _gpsLocation(
    PickLocationEventGPS event,
    Emitter<PickLocationState> emit,
  ) async {}

  void _longPressLocation(
    PickLocationEventLongPress event,
    Emitter<PickLocationState> emit,
  ) async {
    final info = await geocoding.placemarkFromCoordinates(
      event.latLng.latitude,
      event.latLng.longitude,
    );
    final place = info[0];
    final street = place.street ?? '-';
    final address =
        '${place.subLocality}, ${place.locality}, ${place.postalCode}, ${place.country}';
    geocoding.Placemark placemark = place;
    Set<Marker> marker = _defineMarker(event.latLng, street, address);
    emit(PickLocationStateNewLatLng(
      newLatLng: event.latLng,
      marker: marker,
      placeMark: placemark,
    ));
  }

  Set<Marker> _defineMarker(LatLng latLng, String street, String address) {
    Set<Marker> marker = <Marker>{};
    Marker newMarker = Marker(
      markerId: const MarkerId("source"),
      position: latLng,
      infoWindow: InfoWindow(title: street, snippet: address),
    );
    marker.clear();
    marker.add(newMarker);
    return marker;
  }
}
