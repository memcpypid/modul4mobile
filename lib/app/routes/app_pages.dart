import 'package:get/get.dart';
import 'package:modul4/app/modules/mic/bindings/mic_binding.dart';
import 'package:modul4/app/modules/mic/views/mic_view.dart';
import 'package:modul4/app/modules/speak/bindings/speak_binding.dart';
import 'package:modul4/app/modules/speak/views/speak_view.dart';

import '../modules/camera/bindings/camera_binding.dart';
import '../modules/camera/views/camera_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPEAK;

  static final routes = [
    GetPage(
      name: _Paths.CAMERA,
      page: () => const CameraView(),
      binding: CameraBinding(),
    ),
    GetPage(
      name: _Paths.MIC,
      page: () => const MicView(),
      binding: MicBinding(),
    ),
    GetPage(
      name: _Paths.SPEAK,
      page: () => const SpeakView(),
      binding: SpeakBinding(),
    ),
  ];
}
