import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/route_manager.dart';
import 'package:mnfoods_front/profile/application/profile_controller.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
        init: ProfileController(),
        builder: (_) => Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () => Get.back(),
              ),
            ),
            body: SafeArea(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                  Text("${_.user!.firstName} ${_.user!.lastName}"),
                  SizedBox(height: 10),
                  CupertinoTextField(onChanged: _.onInputTextChange),
                  SizedBox(height: 10),
                  CupertinoButton(
                      child: Text('Aceptar'), onPressed: _.goToBackWithData)
                ]))));
  }
}
