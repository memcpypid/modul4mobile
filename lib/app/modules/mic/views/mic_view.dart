// import 'dart:io';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/mic_controller.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:video_player/video_player.dart';

class MicView extends GetView<MicController> {
  const MicView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Speech to Text Example"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Obx(() => Text(
                  controller.text
                      .value, // Menampilkan teks yang dihasilkan dari pengenalan suara
                  style: const TextStyle(fontSize: 24),
                )),
            const SizedBox(height: 20),
            Obx(() => controller.isListening.value
                ? ElevatedButton(
                    onPressed: controller.stopListening,
                    child: const Text("Stop Listening"),
                  )
                : ElevatedButton(
                    onPressed: controller.startListening,
                    child: const Text("Start Listening"),
                  )),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () => Get.offAndToNamed('/camera'),
                child: Text('Home'))
          ],
        ),
      ),
    );
  }
}
