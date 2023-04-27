import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample_app/bindings/bindings.dart';
import 'package:getx_sample_app/controllers/counter_controller.dart';
import 'package:getx_sample_app/screen2.dart';
import 'package:getx_sample_app/screen4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends GetView<CounterController> {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: MyBindings(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('GetX Sample'),
          centerTitle: true,
          elevation: 0,
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
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.defaultDialog(
                      title: 'Title',
                      titleStyle: TextStyle(fontSize: 18),
                      middleText: 'Middle Text',
                      middleTextStyle: TextStyle(fontSize: 16),
                      backgroundColor: Colors.blueGrey[100],
                      radius: 15,
                      textCancel: 'Cancel',
                      cancelTextColor: Colors.red,
                      onCancel: () {
                        print('cancel');
                      },
                      textConfirm: 'Confirm',
                      confirmTextColor: Colors.white,
                      onConfirm: () {
                        print('confirm');
                      },
                      buttonColor: Colors.green,
                      barrierDismissible: false,
                    );
                  },
                  child: Text('GetX Dialog'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.bottomSheet(
                      Container(
                        width: Get.width,
                        height: 100,
                        child: Wrap(
                          children: [
                            ListTile(
                              leading: Icon(Icons.wb_incandescent),
                              title: Text('Light Theme'),
                              onTap: () {
                                Get.changeTheme(
                                  ThemeData.light(),
                                );
                              },
                            ),
                            ListTile(
                              leading: Icon(Icons.wb_incandescent_outlined),
                              title: Text('Dark Theme'),
                              onTap: () {
                                Get.changeTheme(
                                  ThemeData.dark(),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  child: Text('GetX BottomSheet'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.to(
                      Screen2(),
                    );
                  },
                  child: Text('Go to screen 2'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.to(
                      Screen4(),
                    );
                  },
                  child: Text('GetX with obs and obx'),
                ),
                ElevatedButton(
                  onPressed: () {
                    controller.increment();
                  },
                  child: Text('use classes of controller by bindings'),
                ),
                Obx(
                  () => Text(
                    controller.counter.value.toString(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


//getPages:[
  // GetPage(name : 'آدرس صفحه' , page : () => Screen1())
  //...
//]
// initialRoute : 'آدرس صفحه اولیه' 

// Get.toNamed -> میرود به صفحه دیگر
// Get.offNamed -> صفحه جاری را مبندد و به یک صفحه قبل میرود
// Get.offAllNamed -> همه صفحات را میبند و میره به یک صفحه خاص
