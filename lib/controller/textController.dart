// ignore_for_file: non_constant_identifier_names

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:file_picker/file_picker.dart';

// ignore: camel_case_types
class textController extends GetxController {
  var location = TextEditingController().obs;
  var description = TextEditingController().obs;
  var practice = ''.obs;
  var bar_association = ''.obs;
  var cases = TextEditingController().obs;
  var active_cases = TextEditingController().obs;
  var selectedChoice = 'Individual'.obs;
  var imagepath = ''.obs;
  var certificate = false.obs;
  var experience = TextEditingController().obs;
  var education = TextEditingController().obs;
  var orgname = ''.obs;
  var email = TextEditingController().obs;
  var password = TextEditingController().obs;
  var filled = false.obs;
  var isLoaing = false.obs;
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

  Color check_color() {
    if (selectedChoice.value == 'Organization') {
      if (email.value.text.isNotEmpty &&
          password.value.text.isNotEmpty &&
          experience.value.text.isNotEmpty &&
          education.value.text.isNotEmpty) {
        filled.value = true;
      }
    } else if (selectedChoice.value == 'Individual') {
      if (email.value.text.isNotEmpty &&
          password.value.text.isNotEmpty &&
          experience.value.text.isNotEmpty &&
          education.value.text.isNotEmpty) {
        filled.value = true;
      }
    } 
    return filled.value ? Colors.white : Colors.grey;
  }

  @override
  void dispose() {
    super.dispose();
  }
}
