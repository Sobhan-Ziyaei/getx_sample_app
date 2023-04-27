
import 'package:get/get.dart';

class CounterController extends GetxController{
  // obs  -> update()

  var counter = 0.obs ;

  void increment(){
    counter.value++ ;
  }

}
