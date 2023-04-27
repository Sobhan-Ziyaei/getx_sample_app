import 'package:get/get.dart';
import 'package:getx_sample_app/controllers/counter_controller.dart';

class MyBindings implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => CounterController()) ;
  }
}