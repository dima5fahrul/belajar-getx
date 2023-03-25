import 'package:get/get.dart';
import './../models/person.dart';

class PersonController extends GetxController {
  var person = Person(name: "John", age: 20).obs;

  void changeUpperCase() {
    person.update((val) {
      person.value.name = person.value.name.toString().toUpperCase();
    });
  }
}

class PersonControllerV2 extends GetxController {
  var person = Person(name: "John", age: 20).obs;

  void changeUpperCase() {
    person.update((val) {
      person.value.name = person.value.name.toString().toUpperCase();
    });
  }
}

class PersonControllerV3 extends GetxController {
  var person = Person(name: "John", age: 20);

  void changePerson() {
    person.name = person.name.toString().toUpperCase();
    update();
  }
}

class PersonControllerV4 extends GetxController {
  var person = Person(name: "John", age: 20);

  void changePerson() {
    person.name = person.name.toString().toUpperCase();
    person.age = person.age + 1;
    update(['name', 'age']);
  }
}
