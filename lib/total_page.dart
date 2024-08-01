import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class TotalPage extends StatelessWidget {
  TotalPage({super.key});
  final Controller c = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Total items",
              style: TextStyle(fontSize: 25, color: Colors.blueAccent),
            ),
            const SizedBox(
              height: 20,
            ),
            Obx(() => Text(
                  c.sum.toString(),
                  style: const TextStyle(fontSize: 40),
                )),
            const SizedBox(
              height: 10,
            ),
            Container(
                width: 150,
                height: 70,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () => Get.back(),
                  child: const Text(
                    "Go Back",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
