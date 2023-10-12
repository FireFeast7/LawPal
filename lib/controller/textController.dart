import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:file_picker/file_picker.dart';

class textController extends GetxController {
  var location = TextEditingController().obs;
  var description = TextEditingController().obs;
  var practice = ''.obs;
  var bar_association = ''.obs;
  var cases = TextEditingController().obs;
  var active_cases = TextEditingController().obs;
  var selectedChoice = ''.obs;
  var imagepath = ''.obs;
  var certificate = false.obs;
  var experience = ''.obs;
  var education = ''.obs;
  var email = TextEditingController().obs;
  var password = TextEditingController().obs;
  final picker = ImagePicker();
  Future<void> loadImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      await saveImage(pickedFile.path);
      imagepath.value = pickedFile.path;
    }
  }

  void updateChoice(String choice) {
    selectedChoice.value = choice;
  }

  Future<void> saveImage(String imagePath) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('imagePath', imagePath);
  }

  void uploadCertificate() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
        allowedExtensions: ['jpg', 'pdf', 'doc'], type: FileType.custom);
    if (result != null) {
      certificate.value = true;
      File file = File(result.files.single.path!);
      print(file.path);
    } else {
      Get.snackbar("", "Cancelled");
    }
  }

  @override
  void dispose() {
    super.dispose();
  }
}
