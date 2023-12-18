import 'package:flutter/material.dart';
import 'package:flutter_screen_recording/flutter_screen_recording.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:open_file/open_file.dart';
import 'package:permission_handler/permission_handler.dart';

final screenRecorderBloc =
    ChangeNotifierProvider((ref) => ScreenRecorderBloc(ref: ref));

class ScreenRecorderBloc extends ChangeNotifier {
  final Ref ref;
  ScreenRecorderBloc({required this.ref});
  bool isRecording = false;

  Future<void> requestPermissions() async {
    if (await Permission.storage.request().isDenied) {
      await Permission.storage.request();
    }
    if (await Permission.photos.request().isDenied) {
      await Permission.photos.request();
    }
  }

  startRecording() async {
    bool started = await FlutterScreenRecording.startRecordScreen(
        'Recording-${DateTime.now()}',
        titleNotification: 'Recording',
        messageNotification: 'Recording the Screen');
    isRecording = started;
    notifyListeners();
  }

  stopRecording() async {
    String path = await FlutterScreenRecording.stopRecordScreen;
    isRecording = false;
    notifyListeners();
    OpenFile.open(path);
  }
}
