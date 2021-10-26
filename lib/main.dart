import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:mnfoods_front/general/application/global_controller.dart';
import 'package:get/get.dart'; //para trabajar con estados globales
import 'package:mnfoods_front/general/infrastructure/ui/screen/reactive_screen.dart';
//import 'package:mnfoods_front/splash/infrastructure/ui/screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(GlobalController());
    return GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ReactiveScreen());
    //home: SplashScreen());
  }
}
