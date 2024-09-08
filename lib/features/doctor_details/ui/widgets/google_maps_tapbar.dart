import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:reservations_app/core/networking/location_services.dart';
import 'package:reservations_app/core/themes/app_colors.dart';

class GoogleMapsTabBar extends StatefulWidget {
  const GoogleMapsTabBar({super.key});

  @override
  State<GoogleMapsTabBar> createState() => _GoogleMapsTabBarState();
}

class _GoogleMapsTabBarState extends State<GoogleMapsTabBar> {
  Completer<GoogleMapController> mapController =
      Completer<GoogleMapController>();

  static Position? position;

  static const CameraPosition _initialCameraPosition = CameraPosition(
      target: LatLng(26.75488111162714, 33.93677443662552), zoom: 14.4746);

  Future<void> getMyCurrentLocation() async {
    try {
      await LocationServices.getCurrentLocation().whenComplete(() {
        setState(() {});
      });

      // position = await Geolocator.getLastKnownPosition().whenComplete(() {
      //   setState(() {});
      // });
    } on Exception catch (e) {
      print('Failed to get location: $e');
    }
  }

  Future<void> _goToMyCurrentLocation() async {
    final GoogleMapController controller = await mapController.future;
    controller
        .animateCamera(CameraUpdate.newCameraPosition(_initialCameraPosition));
  }

  @override
  void initState() {
    getMyCurrentLocation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // position != null
          //     ?
          GoogleMap(
            initialCameraPosition: _initialCameraPosition,
            mapType: MapType.terrain,
            myLocationEnabled: true,
            zoomControlsEnabled: false,
            myLocationButtonEnabled: false,
            onMapCreated: (GoogleMapController controller) {
              mapController.complete(controller);
            },
          )
          // : const Center(
          //     child: CircularProgressIndicator(
          //       color: ColorsManager.mainBlue,
          //     ),
          //   ),
        ],
      ),
      floatingActionButton: Container(
        margin: const EdgeInsets.fromLTRB(0, 0, 8, 30),
        child: FloatingActionButton(
          backgroundColor: ColorsManager.mainBlue,
          onPressed: () {
            _goToMyCurrentLocation();
          },
          child: const Icon(
            Icons.place,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
