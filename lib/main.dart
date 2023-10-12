import 'package:flutter/material.dart';
import 'package:lawpal/controller/textController.dart';
import 'package:textfield_tags/textfield_tags.dart';
import 'package:choice/choice.dart';
import 'package:get/get.dart';

import 'views/Profile Pages/buildprofile1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BuildProfile1(),
      debugShowCheckedModeBanner: false,
    );
  }
}
