import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart' as geocoding;
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../apps/data/enums/app_button_align.dart';
import '../utils/responsive_screen.dart';
import '../widgets/components/app_button.dart';
import 'widgets/maps/placemark_card.dart';

class PickLocationView extends StatefulWidget {
  const PickLocationView({super.key});

  @override
  State<PickLocationView> createState() => _PickLocationViewState();
}

class _PickLocationViewState extends State<PickLocationView> {
  geocoding.Placemark? placemark;
  final dicodingOffice = const LatLng(-6.8957473, 107.6337669);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pick Location'),
      ),
      body: Center(
        child: Stack(
          children: [
            GoogleMap(
              myLocationEnabled: true,
              initialCameraPosition: CameraPosition(
                zoom: 18,
                target: dicodingOffice,
              ),
              zoomControlsEnabled: false,
              mapToolbarEnabled: false,
              myLocationButtonEnabled: false,
              onMapCreated: (controller) async {
              },
              onLongPress: (LatLng latLng) {
              },
            ),
            Positioned(
              top: 16,
              right: 16,
              child: FloatingActionButton(
                child: const Icon(Icons.my_location),
                onPressed: () {},
              ),
            ),
            Positioned(
              bottom: 16,
              right: 16,
              child: AppButton(
                height: ResponsiveSize.fromWith(context, percentage: 12),
                align: AppButtonAlign.center,
                onClick: () {},
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
                  placemark: placemark!,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
