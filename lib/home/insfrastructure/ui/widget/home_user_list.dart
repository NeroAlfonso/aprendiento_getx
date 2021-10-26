import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:mnfoods_front/general/model/user_model.dart';
import 'package:mnfoods_front/home/application/home_controller.dart';

class HomeUserList extends StatelessWidget {
  const HomeUserList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        id: 'users',
        builder: (_) {
          if (_.loading) {
            return LinearProgressIndicator();
          } else {
            return ListView.builder(
              itemBuilder: (context, index) {
                final User user = _.users[index];
                return ListTile(
                    title: Text(user.firstName),
                    subtitle: Text(user.email),
                    onTap: () => _.showUserProfile(user));
              },
              itemCount: _.users.length,
            );
          }
        });
  }
}
