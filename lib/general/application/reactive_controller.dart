import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/get.dart'; //para programación reactiva

class ReactiveController extends GetxController {
  //int counter = 0;
  RxInt counter = 0.obs; //observable
  RxString currentDate = ''.obs;
  void getDate() {
    currentDate.value = DateTime.now().toString();
  }

  void increment() {
    //counter++;
    counter.value++;
    //update(); //no es necesario con el uso de streams
  }
}
