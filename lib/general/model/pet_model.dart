class Pet {
  late String name;
  late int age;
  Pet({required this.name, required this.age});
  Pet copyWith({String? name, int? age}) {
    return Pet(name: name ?? this.name, age: age ?? this.age);
  }
}
