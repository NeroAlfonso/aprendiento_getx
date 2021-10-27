import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/get.dart';
import 'package:mnfoods_front/general/model/pet_model.dart'; //para programación reactiva

class ReactiveController extends GetxController {
  //Rx<Pet> myPet = Pet(name: 'Lele', age: 1).obs;
  Pet myPet = Pet(name: 'Lele', age: 1);
  //int counter = 0;
  RxInt counter = 0.obs; //observable
  RxString currentDate = ''.obs;
  RxList<String> items = <String>[].obs;
  RxMap<String, dynamic> mapItems = <String, dynamic>{}.obs;
  void setPetAge(int age) {
    //myPet.value.age =age; //no funciona ya que la instancia es de tipo Rx<Pet> por lo tanto
    //deberíamos actualizarl la instancia y no la propiedad
    //cambiando la propiedad no se considera que ha actualizado la instancia
    //myPet.value = myPet.value
    //.copyWith(age: age); //de esta forma si está actualizando la instancia
    myPet.age = age;
  }

  void getDate() {
    currentDate.value = DateTime.now().toString();
  }

  void addItem() {
    //datos primitivos no pueden ser heredados, por lo tanto se acceden con .value
    //con datos complejos...
    print('item añadido');
    items.add(DateTime.now().toString());
  }

  void addMapItem() {
    final String keyValue = DateTime.now().toString();
    mapItems.addIf(true, keyValue, keyValue);
  }

  void removeItem(int index) {
    items.removeAt(index);
  }

  void removeMapItem(String key) {
    print('removiendo');
    mapItems.remove(key);
  }

  void increment() {
    //counter++;
    counter.value++;
    //update(); //no es necesario con el uso de streams
  }
}
