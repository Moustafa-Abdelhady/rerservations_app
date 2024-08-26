import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:reservations_app/core/networking/location_services.dart';
import 'package:reservations_app/core/themes/app_colors.dart';
import 'package:reservations_app/core/themes/styles.dart';
import 'package:reservations_app/features/home/data/models/spcialization_response.dart';

class DoctorTabBarView extends StatefulWidget {
  const DoctorTabBarView({super.key, this.doctorsInfo});
  final Doctors? doctorsInfo;
  @override
  State<DoctorTabBarView> createState() => _DoctorTabBarViewState();
}

class _DoctorTabBarViewState extends State<DoctorTabBarView>
    with TickerProviderStateMixin {
  late TabController tabController = TabController(length: 2, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: tabController,
          tabs: [
            Tab(
              child: Text(
                'About',
                style: TextStyles.font15BlueMeduim,
              ),
            ),
            Tab(
              child: Text(
                'Location',
                style: TextStyles.font15BlueMeduim,
              ),
            ),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: DoctorAboutTabBar(doctorsAbout: widget.doctorsInfo),
              ),
              const GoogleMapsTabBar(),
            ],
          ),
        )
      ],
    );
  }
}

class GoogleMapsTabBar extends StatefulWidget {
  const GoogleMapsTabBar({super.key});

  @override
  State<GoogleMapsTabBar> createState() => _GoogleMapsTabBarState();
}

class _GoogleMapsTabBarState extends State<GoogleMapsTabBar> {
  Completer<GoogleMapController> mapController = Completer();
  static Position? position;
  LatLng? _currentPosition;
  static final CameraPosition _initialCameraPosition = CameraPosition(
      target: LatLng(position!.latitude, position!.longitude), zoom: 14.4746);

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
          position != null
              ? GoogleMap(
                  initialCameraPosition: _initialCameraPosition,
                  mapType: MapType.terrain,
                  myLocationEnabled: true,
                  zoomControlsEnabled: false,
                  myLocationButtonEnabled: false,
                  onMapCreated: (GoogleMapController controller) {
                    mapController.complete(controller);
                  },
                )
              : const Center(
                  child: CircularProgressIndicator(
                    color: ColorsManager.mainBlue,
                  ),
                ),
        ],
      ),
      floatingActionButton: Container(
        margin: const EdgeInsets.fromLTRB(0, 0, 8, 30),
        child: FloatingActionButton(
          backgroundColor: ColorsManager.lightBlue,
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

class DoctorAboutTabBar extends StatelessWidget {
  const DoctorAboutTabBar({super.key, this.doctorsAbout});
  final Doctors? doctorsAbout;
  @override
  Widget build(
    BuildContext context,
  ) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Name : ${doctorsAbout?.name}',
            style: TextStyles.font15DarkBlueBold,
          ),
          Text(
            'City : ${doctorsAbout?.city!.cityName}',
            style: TextStyles.font15DarkBlueBold,
          ),
          Text(
            'Gender : ${doctorsAbout?.gender}',
            style: TextStyles.font15DarkBlueBold,
          ),
          Text(
            'Mail : ${doctorsAbout?.email}',
            style: TextStyles.font15DarkBlueBold,
          ),
          Text(
            'Degree : ${doctorsAbout?.degree}',
            style: TextStyles.font15DarkBlueBold,
          ),
          Text(
            'Start time : ${doctorsAbout?.startTime}',
            style: TextStyles.font15DarkBlueBold,
          ),
          Text(
            'End time : ${doctorsAbout?.endTime}',
            style: TextStyles.font15DarkBlueBold,
          ),
        ],
      ),
    );
  }
}
