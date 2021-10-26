import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:mnfoods_front/home/application/home_controller.dart';

class TextCounterWidget extends StatelessWidget {
  const TextCounterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      //es necesario especificar el tipo de controllar
      //por defecto heredará el controller init de su padre
      id: 'counter', //con el id, el método update() sabrá que builder renderizar
      builder: (_) => Text(_.counter.toString()),
    );
  }
}
