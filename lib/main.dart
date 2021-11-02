import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:mnfoods_front/general/application/global_controller.dart';
import 'package:get/get.dart'; //para trabajar con estados globales
import 'package:mnfoods_front/general/application/socket_client_controller.dart';
import 'package:mnfoods_front/general/infrastructure/ui/screen/reactive_screen.dart';
import 'package:mnfoods_front/home/insfrastructure/ui/screen/home_screen.dart';
//import 'package:mnfoods_front/splash/infrastructure/ui/screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(GlobalController());
    Get.put(SocketClientController());
    return GetMaterialApp(
        getPages: <GetPage>[
          GetPage(
              name: '/',
              page: () => ReactiveScreen(),
              transition: Transition.rightToLeft),
          GetPage(
              name: '/users/:local',
              page: () {
                print('RUTAAAA');
                print(Get.parameters['local'] as String);
                return HomeScreen();
              },
              transition: Transition.rightToLeft)
        ],
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ReactiveScreen());
    //home: SplashScreen()
  }
}
