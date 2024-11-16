import 'package:get/get.dart';

import '../controllers/speak_controller.dart';

class SpeakBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SpeakController>(
      () => SpeakController(),
    );
  }
}
