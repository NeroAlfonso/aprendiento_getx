import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:mnfoods_front/general/application/reactive_controller.dart';
import 'package:mnfoods_front/general/application/socket_client_controller.dart';
import 'package:mnfoods_front/general/model/themes.dart';

class ReactiveScreen extends StatelessWidget {
  const ReactiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SocketClientController socketController =
        Get.find<SocketClientController>();
    return GetBuilder<ReactiveController>(
        init: ReactiveController(),
        builder: (_) {
          return Scaffold(
              /*floatingActionButton: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton(
                      onPressed: () {
                        //_.increment();
                        _.getDate();
                      },
                      child: Icon(Icons.add)),
                  FloatingActionButton(
                      onPressed: () {
                        //_.addItem();
                        _.addMapItem();
                      },
                      child: Icon(Icons.calendar_today))
                ],
              ),*/
              body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Obx(() => Text("age ${_.myPet.age}")),
              Obx(() => Text(socketController.message.value)),
              CupertinoButton(
                  child: Text('Agregar año'),
                  onPressed: () {
                    _.setPetAge(_.myPet.age + 1);
                  }),
              CupertinoButton(
                  child: Text('Lista de usuarios'),
                  onPressed: () {
                    _.toUsers();
                  }),
              CupertinoButton(
                  child: Text('cambiar tema'),
                  onPressed: () {
                    Get.changeTheme(Themes().darkTheme);
                  })
            ],
          )

              /*Obx(() => ListView(
                    children: _.mapItems.values
                        .map((dynamic e) => ListTile(
                            title: Text(e),
                            trailing: IconButton(
                                icon: Icon(Icons.remove),
                                onPressed: () => _.removeMapItem(e))))
                        .toList(),
                  ))*/ /*Obx(() {
                print('re render');
                return ListView.builder(
                    itemBuilder: (__, index) {
                      final String text = _.items[index];
                      return ListTile(
                        title: Text(text),
                        trailing: IconButton(
                            onPressed: () {
                              _.removeItem(index);
                            },
                            icon: Icon(Icons.delete)),
                      );
                    },
                    itemCount: _.items.length);
              })*/
              /*Column(              
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
              )*/
              );
        });
  }
}
