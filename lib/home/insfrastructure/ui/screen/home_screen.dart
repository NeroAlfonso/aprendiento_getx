import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:mnfoods_front/general/infrastructure/ui/widget/product_list_widget.dart';
import 'package:mnfoods_front/home/application/home_controller.dart';
import 'package:mnfoods_front/home/insfrastructure/ui/widget/home_user_list.dart';

class HomeScreen extends StatelessWidget {
  final HomeController _controller = HomeController();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (_) => Scaffold(
          //body: HomeUserList(),
          body: Text(_.id.toString()),
          //, ProductList()]
          floatingActionButton: FloatingActionButton(
              onPressed: () {
                _.increment();
              },
              child: Icon(Icons.add))),
      init: _controller,
    );
  }
}
