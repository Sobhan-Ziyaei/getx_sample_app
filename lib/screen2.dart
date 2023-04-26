import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample_app/controllers/counter_controller.dart';
import 'package:getx_sample_app/screen3.dart';

class Screen2 extends StatelessWidget {
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
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetBuilder<CounterController>(
            id: '1',
            builder: (controller) {
              
              print('build 1');
              return Text(
                controller.counter.toString(),
              );
            },
          ),
          GetBuilder<CounterController>(
            id: '2',
            builder: (controller) {
              print('build 2');

              return Text('0');
            },
          ),
          ElevatedButton(
            onPressed: () {
              //Get.off -> قابلیت برگشت ندارد
              Get.off(Screen3());
            },
            child: Text('Screen 2'),
          ),
        ],
      )),
    );
  }
}
