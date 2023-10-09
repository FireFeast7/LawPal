import 'package:flutter/material.dart';
import 'package:get/get.dart';

class textController extends GetxController {
  var location = TextEditingController().obs;
  var description = TextEditingController().obs;
  var practice = TextEditingController().obs;
  var bar_association = TextEditingController().obs;
  var cases = TextEditingController().obs;
  var active_cases = TextEditingController().obs;

  @override
  void dispose() {
    super.dispose();
  }
}
