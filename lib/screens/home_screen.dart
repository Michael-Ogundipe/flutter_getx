import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello - Welcome, I'm learning getX"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
                onPressed: () {
                  Get.snackbar(
                    "My Snack",
                    "This is my first snack",
                    forwardAnimationCurve: Curves.easeInCirc,
                  );
                },
                child: const Text("Show SnackBar")),
            TextButton(
              child: const Text("Show Dialog"),
              onPressed: () {
                Get.defaultDialog(
                  title: "My Dialog ",
                  middleText: "Here, I changed the Bg color to blue",
                  backgroundColor: Colors.blue,
                  textCancel: "Cancel",
                  cancelTextColor: Colors.white,
                );
              },
            ),
            TextButton(
              child: const Text("Bottom Sheet"),
              onPressed: () {
                Get.bottomSheet(
                  Wrap(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.wb_sunny_outlined),
                        title: const Text("Change to Light Theme"),
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.wb_sunny),
                        title: const Text("Change to Dark Theme"),
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
            TextButton(
              child: const Text("Go to First screen"),
              onPressed: () {
                Get.toNamed(
                  "/first/Passed-1234567??",
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}


