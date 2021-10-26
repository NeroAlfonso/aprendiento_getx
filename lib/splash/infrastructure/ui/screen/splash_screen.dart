import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:mnfoods_front/splash/application/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      //dispose: (_) {}, //dispose en el builder
      init: SplashController(),
      builder: (_) {
        return Scaffold(body: Center(child: CircularProgressIndicator()));
      },
    );
  }
}
