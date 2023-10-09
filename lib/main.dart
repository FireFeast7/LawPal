import 'package:flutter/material.dart';
import 'package:lawpal/controller/textController.dart';
import 'package:textfield_tags/textfield_tags.dart';
import 'package:choice/choice.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final textController controller = Get.put(textController());
  String selectedoption = 'Option 1';
  void dropdownCallback(String? selectedvalue) {
    if (selectedvalue is String) {
      setState(() {
        selectedoption = selectedvalue;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final bool isBothFieldsNotEmpty = controller.location.text.isNotEmpty &&
        controller.description.text.isNotEmpty;

    final Color buttonColor = isBothFieldsNotEmpty ? Colors.blue : Colors.grey;

    return Scaffold(
      appBar: AppBar(
        title: Text('Law Pal'),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        // Row(
        //   children: [
        //     IconButton(
        //       icon: Icon(Icons.arrow_back),
        //       onPressed: () {
        //         //           Navigator.of(context).pop();
        //       },
        //     ),
        //     Image(image: AssetImage('images/icon.png')),
        //     Text('My Flutter App'),
        //   ],
        // ),
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
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.height,
            child: const Row(
              children: [
                SizedBox(
                  width: 50,
                ),
                Icon(
                  Icons.account_circle,
                  size: 50,
                ),
                SizedBox(
                  width: 15,
                ),
                Text("Upload Your Profile Picture"),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text("Type of Lawyer"),
                const SizedBox(
                  height: 10,
                ),
                DropdownButton<String>(
                  onChanged: dropdownCallback,
                  value: selectedoption,
                  items: <String>[
                    'Option 1',
                    'Option 2',
                    'Option 3',
                    'Option 4',
                  ].map<DropdownMenuItem<String>>((String option) {
                    return DropdownMenuItem<String>(
                      value: option,
                      child: Text(option),
                    );
                  }).toList(),
                  isExpanded: true,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            child: TextField(
              controller: controller.location,
              decoration: InputDecoration(
                icon: Icon(Icons.location_city),
                hintText: "Enter City , State",
                label: Text("Location"),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "About You",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextField(
                  controller: controller.description,
                  maxLines: 7,
                  maxLength: 200,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(16),
                    hintText: "Enter your Description here ...",
                    border: InputBorder.none,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (controller.location.text.isEmpty ||
                        controller.description.text.isEmpty) {
                    } else {
                      print("Lmao");
                    }
                  },
                  child: Text("Next"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColor,
                    foregroundColor: Colors.black,
                    fixedSize: Size(150, 20),
                  ),
                ),
                SizedBox(
                  width: 40,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
