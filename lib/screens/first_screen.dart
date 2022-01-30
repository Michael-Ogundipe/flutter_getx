import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("First screen"),),
      body: Center(
        child: Column(
          children: [
            Text("${Get.parameters['someValue']}"),
            TextButton(
              child: const Text("Go back Home"),
              onPressed: (){
                Get.back();
              },),
          ],
        ),
      ),
    );
  }
}
