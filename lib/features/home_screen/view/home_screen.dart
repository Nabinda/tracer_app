import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tracer_app/features/home_screen/bloc/firebase_bloc.dart';
import 'package:tracer_app/features/home_screen/bloc/map_bloc.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  void initState() {
    super.initState();
    ref.read(firebaseBloc).updateToken();
  }

  @override
  Widget build(BuildContext context) {
    final markerLatLng = ref.watch(mapBloc);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tracer App'),
      ),
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: const CameraPosition(
          target: LatLng(37.42796133580664, -122.085749655962),
          zoom: 12,
        ),
        polylines: {
          Polyline(
              polylineId: const PolylineId('tracker-device'),
              color: Colors.teal,
              width: 4,
              points: markerLatLng.points)
        },
        markers: {
          Marker(
              markerId: const MarkerId('tracker-device'),
              position: markerLatLng.markerLatLng ??
                  const LatLng(37.42796133580664, -122.085749655962))
        },
        onMapCreated: (GoogleMapController controller) {
          ref.read(mapBloc).initateController(controller);
        },
      ),
    );
  }
}
