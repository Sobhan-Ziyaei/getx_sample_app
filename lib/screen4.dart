import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample_app/controllers/counter_controller.dart';

class Screen4 extends StatelessWidget {
  var controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.increment();
        },
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: Center(
          // Obx -> Getbuilder
          child: Obx(() {
            return Text(
              controller.counter.value.toString(),
              style: TextStyle(fontSize: 30),
            );
          }),
        ),
      ),
    );
  }
}
