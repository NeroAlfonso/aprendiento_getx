import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:mnfoods_front/general/infrastructure/repository/user_api.dart';
import 'package:mnfoods_front/general/model/user_model.dart';
import 'package:mnfoods_front/profile/infrastructure/screen/profile_screen.dart';

class HomeController extends GetxController {
  int _counter = 0;
  int get counter => _counter;
  List<User> _users = [];
  bool _loading = true;
  @override
  void onInit() {
    super.onInit();
    print("widget cargado en memoria");
  }

  @override
  void onReady() {
    super.onReady();
    print("widget renderizado");
    this.loadUsers();
    //lugar idoneo para mostrar un dialogo o una pagina
  }

  List<User> get users => _users;
  bool get loading => _loading;
  Future<void> loadUsers() async {
    final data = await UserApi.instance.getUsers(1);
    _users = data;
    _loading = false;
    update(['users']);
  }

  Future<void> showUserProfile(User user) async {
    //Manejando retornos de vistas
    final result = await Get.to<String>(ProfileScreen(),
        arguments: user); //navegar a otra vista, pasar parámetros
    if (result != null) {
      print("RESULT ====================== ${result}");
    }
  }

  void increment() {
    _counter++;
    update(
        ['counter'],
        _counter >
            4); //puede recibir un segundo parámetro para condicionar el renderizado
    //se renderiza todo el componente afin, pero si se especifica un arreglo de id's solo esos
    //builders serán renderizados
  }
}
