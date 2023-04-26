import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample_app/controllers/counter_controller.dart';
import 'package:getx_sample_app/screen2.dart';

class Screen3 extends StatelessWidget {
  var controller = Get.find<CounterController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            controller.counter.toString(),
          ),
          ElevatedButton(
            onPressed: () {
              //Get.back -> برگشت به یک صفحه قبل
              //Get.back();
            },
            child: Text('Screen 3'),
          ),
        ],
      )),
    );
  }
}
