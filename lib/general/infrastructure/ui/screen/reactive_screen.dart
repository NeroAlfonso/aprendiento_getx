import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:mnfoods_front/general/application/reactive_controller.dart';

class ReactiveScreen extends StatelessWidget {
  const ReactiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ReactiveController>(
        init: ReactiveController(),
        builder: (_) {
          print("reactive");
          return Scaffold(
              floatingActionButton: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton(
                      onPressed: () {
                        _.increment();
                      },
                      child: Icon(Icons.add)),
                  FloatingActionButton(
                      onPressed: () {
                        _.getDate();
                      },
                      child: Icon(Icons.calendar_today))
                ],
              ),
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Obx(() {
                    return Text(_.counter.value.toString(),
                        style: TextStyle(fontSize: 30));
                  }) //elemento reactivo, actualiza con el stream, no requiere update()

                  /*Text(_.counter.value.toString(),
                      style: TextStyle(fontSize: 30)
                    )*/

                  ,
                  Obx(() =>
                      Text(_.currentDate.value, style: TextStyle(fontSize: 30)))
                ],
              ));
        });
  }
}
