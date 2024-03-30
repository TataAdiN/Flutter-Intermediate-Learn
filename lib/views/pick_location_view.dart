import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geocoding/geocoding.dart' as geocoding;

import '../apps/blocs/pick_location_bloc.dart';
import '../apps/data/enums/app_button_align.dart';
import '../apps/events/pick_location/pick_location_event_gps.dart';
import '../apps/events/pick_location/pick_location_event_longpress.dart';
import '../apps/states/pick_location/pick_location_state.dart';
import '../apps/states/pick_location/pick_location_state_fail.dart';
import '../apps/states/pick_location/pick_location_state_new_latlng.dart';
import '../utils/responsive_screen.dart';
import '../widgets/components/app_button.dart';
import '../widgets/dialogs/app_error_alert_dialog.dart';
import '../widgets/dialogs/app_show_dialog.dart';
import 'widgets/maps/placemark_card.dart';

class PickLocationView extends StatefulWidget {
  const PickLocationView({super.key});

  @override
  State<PickLocationView> createState() => _PickLocationViewState();
}

class _PickLocationViewState extends State<PickLocationView> {
  final dicodingOffice = const LatLng(-6.8957473, 107.6337669);
  late GoogleMapController mapController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pick Location'),
      ),
      body: BlocConsumer<PickLocationBloc, PickLocationState>(
        builder: (context, state) {
          Set<Marker> marker = {};
          geocoding.Placemark? placemark;
          LatLng? newLatLng;
          if (state is PickLocationStateNewLatLng) {
            placemark = state.placeMark;
            marker = state.marker;
            newLatLng = state.newLatLng;
            mapController.animateCamera(
              CameraUpdate.newLatLng(state.newLatLng),
            );
          }
          return mapView(marker: marker, placemark: placemark, latLng: newLatLng);
        },
        listener: (BuildContext context, PickLocationState state) {
          if (state is PickLocationStateFail) {
            showAppDialog(
              context,
              dialog: appErrorAlertDialog(
                context,
                title: state.title,
                message: state.message,
              ),
            );
          }
        },
      ),
    );
  }

  Center mapView({
    required Set<Marker> marker,
    geocoding.Placemark? placemark,
    LatLng? latLng,
  }) {
    return Center(
      child: Stack(
        children: [
          GoogleMap(
            markers: marker,
            myLocationEnabled: true,
            initialCameraPosition: CameraPosition(
              zoom: 18,
              target: dicodingOffice,
            ),
            zoomControlsEnabled: false,
            mapToolbarEnabled: false,
            myLocationButtonEnabled: false,
            onMapCreated: (controller) async {
              mapController = controller;
            },
            onLongPress: (LatLng latLng) {
              context
                  .read<PickLocationBloc>()
                  .add(PickLocationEventLongPress(latLng: latLng));
            },
          ),
          Positioned(
            top: 16,
            right: 16,
            child: FloatingActionButton(
              child: const Icon(Icons.my_location),
              onPressed: () {
                context.read<PickLocationBloc>().add(PickLocationEventGPS());
              },
            ),
          ),
          Positioned(
            bottom: placemark != null
                ? ResponsiveSize.fromWidth(context, percentage: 24)
                : 16,
            right: 16,
            child: AppButton(
              height: ResponsiveSize.fromWidth(context, percentage: 12),
              align: AppButtonAlign.center,
              onClick: () {
                context.pop<LatLng>(latLng);
              },
              label: 'Pick this Location',
              icon: Icons.edit_location_alt,
              color: Colors.green,
            ),
          ),
          if (placemark == null)
            const SizedBox()
          else
            Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: PlacemarkCard(
                placemark: placemark,
              ),
            ),
        ],
      ),
    );
  }
}
