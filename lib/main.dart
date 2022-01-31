import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter_getx/screens/first_screen.dart';
import 'package:flutter_getx/screens/home_screen.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';

Future<void> main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);

  var emailEditingController = TextEditingController();
  var storage = GetStorage();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: emailEditingController,
                ),
              ),
              const SizedBox(height: 8,),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  child: const Text("Write"),
                  onPressed: (){
                    if (GetUtils.isEmail(emailEditingController.text)) {
                      storage.write("email",
                      emailEditingController.text);
                    } else {
                      Get.snackbar("InCorrect Email", "Privide Email in valid format",
                      colorText: Colors.white,
                      backgroundColor: Colors.red,
                      snackPosition: SnackPosition.BOTTOM);
                    }
                  },
                ),
              ),
              const SizedBox(height: 8,),
              ElevatedButton(
                child: const Text("Read"),
                onPressed: (){
                  debugPrint("The Email is${storage.read("email")}");
                } )


            ],
          ),
        ),
      ),
    );
  }
}

