import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/route_manager.dart';
import 'package:mnfoods_front/home/insfrastructure/ui/screen/home_screen.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    Future.delayed(Duration(seconds: 2), () {
      /*Get.to(HomePage(),
          transition: Transition.zoom, duration: Duration(seconds: 2));*/
      Get.off(HomeScreen(),
          transition: Transition.zoom, duration: Duration(seconds: 2));
    }); //con off no se permite volver a la vista anterior
    //equivale a Navigator.pushReplacement(route)
  }

  @override
  void onClose() {
    //equivalente a dispose
    //Aquí se cierran todas las conexiones y etc
    super.onClose();
  }
}
