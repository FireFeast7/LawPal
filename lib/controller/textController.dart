import 'package:flutter/material.dart';
import 'package:get/get.dart';

class textController extends GetxController {
  final TextEditingController location = TextEditingController();
  final TextEditingController description = TextEditingController();
  @override
  void dispose() {
    location.dispose();
    description.dispose();
    super.dispose();
  }
}
