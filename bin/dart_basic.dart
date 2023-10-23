import 'package:dart_basic/dart_basic.dart' as dart_basic;

import '../lib/function.dart';

void main(List<String> arguments) {
  var firstName = 'Dart';
  String lastName = 'Basic';
  String fullName = firstName + ' ' + lastName;
  print('Hello ${fullName} !');

  // multi line string
  var multiLine = ''' 
  This is multi line strings
  abc
  xyz
  ''';
  print(multiLine);

  // print icon
  print('\u{1f44f}');

  // check if a string is empty
  var emptyString = '';
  if (emptyString.isEmpty) {
    print('empty string');
  } else {
    print('not empty string');
  }

  // boolean
  bool isInvalidInput = firstName.isEmpty && lastName.isNotEmpty;
  print(isInvalidInput);

  // use function
  print('2 add 3 equal to = ${add(1, 2)}');
  print('2 multi 3 equal to = ${multiply(x: 2, y: 3)}');
  sayHello("Tuan Nam");
  print(getUrl('localhost', port: 8080));
  print('today is ${getDateTimeString(day: 23, month: 10, year: 2023)}');
  doSomeTask(
      param1: 1,
      param2: 2,
      completion: (int result) {
        print(result);
      });

  // list of string
  final List<String> carBrands = ['BMW', 'Mercedes', 'Audi'];
  carBrands[0] = "Honda";
  // carBrands = ["Toyota", "Honda", "Mazda"]; // re-assign
  print(carBrands);
  print("There are ${carBrands.length} car brands");
  // iterate through carBrands
  for (var i = 0; i < carBrands.length; i++) {
    String carBrand = carBrands[i];
    print(carBrand);
  }
  carBrands.forEach((carBrand) => print(carBrand));
  carBrands.shuffle();
  print("After shuffled: ${carBrands}");
  carBrands.asMap().forEach((index, carBrand) {
    print('index: ${index}, carBrand: ${carBrand}');
  });
  // insert more items
  carBrands.add("Toyota"); // add item vao cuoi cung
  carBrands.insert(0, "Mazda"); // add item vao vi tri index
  List<String> clonedCarBrands = [...carBrands]; // clone list
  clonedCarBrands.sort((a, b) => a.compareTo(b)); // sort list ascending
  clonedCarBrands.sort((a, b) => b.compareTo(a)); // sort list descending
}
