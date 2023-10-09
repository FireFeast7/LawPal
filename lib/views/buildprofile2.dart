import 'package:flutter/material.dart';
import 'package:lawpal/controller/textController.dart';

class BuildProfile2 extends StatelessWidget {
  final textController controller = textController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  BuildProfile2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Law Pal'),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
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
          Container(
            padding: EdgeInsets.all(20),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Practice Name*',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextFormField(
                    controller: controller.practice.value,
                    decoration: const InputDecoration(
                      hintText: 'Enter Practice Name',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Practice Name is required';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 25.0),
                  const Text(
                    'Bar Association Number*',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextFormField(
                    controller: controller.bar_association.value,
                    decoration: const InputDecoration(
                      hintText: 'Enter Bar Association Number',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Bar Association Number is required';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 25.0),
                  const Text(
                    'Total Number of Cases Fought',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextFormField(
                    controller: controller.cases.value,
                    decoration: const InputDecoration(
                      hintText: 'Enter Total Number of Cases Fought',
                    ),
                  ),
                  const SizedBox(height: 25.0),
                  const Text(
                    'Active Cases',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextFormField(
                    controller: controller.active_cases.value,
                    decoration: const InputDecoration(
                      hintText: 'Enter Active Cases',
                    ),
                  ),
                  const SizedBox(height: 25.0),
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Icon(Icons.description),
                        SizedBox(
                          width: 30,
                        ),
                        Text("Upload Your Certificate"),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25.0),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // All required fields are filled, you can proceed
                        // Add your logic here
                      }
                    },
                    child: const Text('Submit'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
