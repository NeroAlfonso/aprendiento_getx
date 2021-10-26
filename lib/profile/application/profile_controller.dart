import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/route_manager.dart';
import 'package:mnfoods_front/general/model/user_model.dart';

class ProfileController extends GetxController {
  User? _user;
  User? get user => _user;
  String _inputText = '';
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _user = Get.arguments;
  }

  void onInputTextChange(String text) {
    _inputText = text;
  }

  void goToBackWithData() {
    if (_inputText.trim().length > 0) {
      Get.back(result: _inputText);
    } else {
      //para cupertino
      showCupertinoModalPopup(
          context: Get.overlayContext as BuildContext,
          builder: (_) => CupertinoActionSheet(
                  title: Text("ERROR"),
                  cancelButton: CupertinoActionSheetAction(
                    child: Text('ACEPTAR'),
                    onPressed: () => Get.back(),
                  ),
                  actions: [
                    CupertinoButton(
                        child: Text('Aceptar'), onPressed: () => Get.back())
                  ]));
      //para material
      /*Get.dialog(AlertDialog(
        title: Text("ERROR"),
        content: Text("Ingrese un valor válido"),
        actions: [
          CupertinoButton(child: Text('Aceptar'), onPressed: () => Get.back())
        ],
      ));*/
    }
  }
}
