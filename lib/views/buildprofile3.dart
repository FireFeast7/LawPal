// ignore_for_file: prefer_const_constructors

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawpal/controller/textController.dart';
import 'package:lawpal/views/buildprofile2.dart';

class BuildProfile3 extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final textController controller = Get.put(textController());
  BuildProfile3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Law Pal'),
        leading: IconButton(
            onPressed: () {
              Get.to(() => BuildProfile2());
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "images/icon.png",
                  scale: 3,
                ),
                const SizedBox(
                  width: 15,
                ),
                const Text(
                  "Build Your Profile",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Obx(
            () => Container(
              height: MediaQuery.of(context).size.height * 0.50,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(25),
              child: controller.selectedChoice.value == 'Individual'
                  ? ListView.builder(
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return Form(
                          key: _formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Email*',
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Email is required';
                                  }
                                  return null;
                                },
                                onSaved: (value) {
                                  controller.email.value.text = value!;
                                },
                              ),
                              SizedBox(height: 16.0),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Password*',
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Password is required';
                                  }
                                  return null;
                                },
                                onSaved: (value) {
                                  controller.password.value.text = value!;
                                },
                              ),
                              SizedBox(height: 16.0),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Experience*',
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Experience is required';
                                  }
                                  return null;
                                },
                                onSaved: (value) {
                                  controller.experience.value = value!;
                                },
                              ),
                              SizedBox(height: 16.0),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Education*',
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Education is required';
                                  }
                                  return null;
                                },
                                onSaved: (value) {
                                  controller.education.value = value!;
                                },
                              ),
                              SizedBox(height: 16.0),
                            ],
                          ),
                        );
                      },
                    )
                  : ListView.builder(
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return Form(
                          key: _formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Email*',
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Email is required';
                                  }
                                  return null;
                                },
                                onSaved: (value) {
                                  controller.email.value.text = value!;
                                },
                              ),
                              SizedBox(height: 16.0),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Password*',
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Password is required';
                                  }
                                  return null;
                                },
                                onSaved: (value) {
                                  controller.password.value.text = value!;
                                },
                              ),
                              SizedBox(height: 16.0),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Experience*',
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Experience is required';
                                  }
                                  return null;
                                },
                                onSaved: (value) {
                                  controller.experience.value = value!;
                                },
                              ),
                              SizedBox(height: 16.0),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Education*',
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Education is required';
                                  }
                                  return null;
                                },
                                onSaved: (value) {
                                  controller.education.value = value!;
                                },
                              ),
                              SizedBox(height: 16.0),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Organization Name*',
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Name is required';
                                  }
                                  return null;
                                },
                                onSaved: (value) {
                                  controller.education.value = value!;
                                },
                              ),
                              SizedBox(height: 16.0),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Organization Name*',
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Name is required';
                                  }
                                  return null;
                                },
                                onSaved: (value) {
                                  controller.education.value = value!;
                                },
                              ),
                              SizedBox(height: 16.0),
                            ],
                          ),
                        );
                      },
                    ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Obx(
                      () => Container(
                        padding: EdgeInsets.all(10),
                        color: controller.selectedChoice.value == 'Organization'
                            ? Colors.yellow
                            : Colors.grey,
                        height: 90,
                        width: 140,
                        child: Image.asset("images/Group53.png"),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("Organization"),
                        ),
                        Obx(
                          () => Radio(
                            value: "Organization",
                            groupValue: controller.selectedChoice.value,
                            onChanged: (value) {
                              controller.updateChoice(value!);
                            },
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    Obx(
                      () => Container(
                        padding: EdgeInsets.all(10),
                        color: controller.selectedChoice.value == 'Individual'
                            ? Colors.yellow
                            : Colors.grey,
                        height: 90,
                        width: 140,
                        child: Image.asset("images/Group54.png"),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("Individual"),
                        ),
                        Obx(
                          () => Radio(
                            value: "Individual",
                            groupValue: controller.selectedChoice.value,
                            onChanged: (value) {
                              controller.updateChoice(value!);
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
