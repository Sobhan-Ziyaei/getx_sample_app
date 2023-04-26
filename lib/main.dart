import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 46, 46, 46),
        appBar: AppBar(
          title: Text('GetX Sample'),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: SafeArea(
          child: Container(
            width: Get.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.snackbar(
                      'Title',
                      'message',
                      duration: Duration(seconds: 2),
                      backgroundColor: Colors.green,
                      colorText: Colors.red,
                      animationDuration: Duration(seconds: 1),
                      forwardAnimationCurve: Curves.easeInOut,
                      reverseAnimationCurve: Curves.easeOutSine,
                      barBlur: 1,
                      borderColor: Colors.red,
                      borderWidth: 3,
                      borderRadius: 10.0,
                      snackPosition: SnackPosition.BOTTOM,
                      icon: Icon(Icons.favorite),
                      isDismissible: true,
                      margin: EdgeInsets.all(10),
                    );
                  },
                  child: Text('SnackBar'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
