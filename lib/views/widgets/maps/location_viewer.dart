import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geocoding/geocoding.dart' as geocoding;

import '../../../utils/responsive_screen.dart';
import 'placemark_card.dart';

class LocationViewer extends StatefulWidget {
  const LocationViewer({
    super.key,
    required this.latitude,
    required this.longitude,
  });

  final double latitude;
  final double longitude;

  @override
  State<LocationViewer> createState() => _LocationViewerState();
}

class _LocationViewerState extends State<LocationViewer> {
  geocoding.Placemark? placemark;

  _getPlacemark() async {
    List<geocoding.Placemark> info = await geocoding.placemarkFromCoordinates(
        widget.latitude, widget.longitude);
    final place = info[0];
    setState(() {
      placemark = place;
    });
  }

  @override
  Widget build(BuildContext context) {
    LatLng dicodingOffice = LatLng(widget.latitude, widget.longitude);
    late GoogleMapController mapController;
    final marker = Marker(
      markerId: const MarkerId("dicoding"),
      position: dicodingOffice,
      onTap: () {
        mapController.animateCamera(
          CameraUpdate.newLatLngZoom(dicodingOffice, 18),
        );
      },
    );
    return SizedBox(
      width: double.infinity,
      height: ResponsiveSize.fromWith(context, percentage: 100),
      child: Stack(
        alignment: Alignment.center,
        children: [
          GoogleMap(
            mapType: MapType.normal,
            myLocationButtonEnabled: false,
            zoomControlsEnabled: false,
            mapToolbarEnabled: false,
            markers: {marker},
            initialCameraPosition: CameraPosition(
              zoom: 18,
              target: dicodingOffice,
            ),
            onMapCreated: (controller) {
              mapController = controller;
              _getPlacemark();
            },
          ),
          if (placemark == null)
            const SizedBox()
          else
            Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: PlacemarkCard(
                placemark: placemark!,
              ),
            ),
        ],
      ),
    );
  }
}
