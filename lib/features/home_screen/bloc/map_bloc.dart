import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tracer_app/features/home_screen/bloc/firebase_bloc.dart';

final mapBloc = ChangeNotifierProvider((ref) => MapBloc(ref: ref));

class MapBloc extends ChangeNotifier {
  final Ref ref;
  MapBloc({required this.ref});

  GoogleMapController? mapController;
  LatLng? markerLatLng;
  List<LatLng> points = [];

  initateController(GoogleMapController controller) {
    mapController = controller;
    listenFirebaseLocationStream();
  }

  moveCameraWithLocation(LatLng data) {
    mapController?.animateCamera(CameraUpdate.newLatLng(data));
    markerLatLng = data;
    points.add(data);
    notifyListeners();
  }

  listenFirebaseLocationStream() {
    final locationStream = ref.read(firebaseBloc).streamUserLocation();

    locationStream.listen((event) {
      final latlongFirebaseData = event.data();
      moveCameraWithLocation(LatLng(latlongFirebaseData?.lastLat ?? 0,
          latlongFirebaseData?.lastLong ?? 0));
    });
  }
}
