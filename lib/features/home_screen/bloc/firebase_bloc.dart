import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tracer_app/constants/firestore_constants.dart';
import 'package:tracer_app/features/home_screen/data/model/firebase_lat_long_model.dart';

final firebaseBloc = ChangeNotifierProvider((ref) => FirebaseBloc(ref: ref));

class FirebaseBloc extends ChangeNotifier {
  final Ref ref;
  FirebaseBloc({required this.ref});
  final firestore = FirebaseFirestore.instance;

  ///Update the token of tracer to firebase
  Future<void> updateToken() async {
    final token = await FirebaseMessaging.instance.getToken();

    firestore
        .collection(FirebaseConstants.locationCollection)
        .doc(FirebaseConstants.locationDocument)
        .set({'tracer_token': token}, SetOptions(merge: true)).onError(
            (error, stackTrace) {
      debugPrint('Error: $error, Stack Trace : $stackTrace');
    });
  }

  ///Stream user Location of tracker App
  Stream<DocumentSnapshot<FirebaseLatLongModel>> streamUserLocation() {
    return firestore
        .collection(FirebaseConstants.locationCollection)
        .doc(FirebaseConstants.locationDocument)
        .withConverter(
            fromFirestore: (data, _) =>
                FirebaseLatLongModel.fromJson(data.data() ?? {}),
            toFirestore: (data, _) => data.toJson())
        .snapshots()
        .asBroadcastStream();
  }
}
