import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample_app/screen3.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            //Get.off -> قابلیت برگشت ندارد
            Get.off(Screen3());
          },
          child: Text('Screen 2'),
        ),
      ),
    );
  }
}
