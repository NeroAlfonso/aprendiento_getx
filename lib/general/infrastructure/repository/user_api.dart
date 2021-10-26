import 'package:dio/dio.dart';
import 'package:mnfoods_front/general/model/user_model.dart';

class UserApi {
  UserApi._internal();
  static UserApi _instance = UserApi._internal();
  static UserApi get instance => _instance;
  final _dio = Dio();
  Future<List<User>> getUsers(int page) async {
    List<User> userList = [];
    try {
      final Response response = await _dio.get('https://reqres.in/api/users',
          queryParameters: {"page": page, "delayed": 4});
      userList
          .addAll((response.data['data'] as List).map((e) => User.fromJson(e)));
      return userList;
    } catch (e) {
      return userList;
    }
  }
}
