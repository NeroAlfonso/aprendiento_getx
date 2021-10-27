import 'dart:async';

import 'package:faker/faker.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class SocketClientController extends GetxController {
  RxString _message = ''.obs;
  late Timer _timer;
  final _faker = Faker();
  RxString get message => _message;
  @override
  void onInit() {
    super.onInit();
    _init();
  }

  _init() {
    _timer = Timer.periodic(Duration(seconds: 5), (timer) {
      _message.value = _faker.lorem.sentence();
    });
  }

  @override
  void onClose() {
    super.onClose();
    if (_timer != null) {
      _timer.cancel();
    }
  }
}
