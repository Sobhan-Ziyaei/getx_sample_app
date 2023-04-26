import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample_app/screen2.dart';

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            //Get.back -> برگشت به یک صفحه قبل
            //Get.back();
          },
          child: Text('Screen 3'),
        ),
      ),
    );
  }
}
