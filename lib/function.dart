// function return value
int add(int a, int b) {
  return a + b;
}

// function with named parameters
double multiply({double x = 0, double y = 0}) {
  print('x = ${x} y = ${y}');
  return x * y;
}

// function does not return value
sayHello([String name = "world"]) {
  print('Hello ${name} !');
}

// function return string
String getUrl(String serverName, {int port = 8080}) =>
    'http://${serverName}:${port}';

String getDateTimeString({int? day, int? month, int? year}) {
  String strDay = (day ?? 0) < 10 ? '0${day}' : '${day}';
  String strMonth = (month ?? 0) < 10 ? '0${month}' : '${month}';
  String strYear = (year ?? 0) < 10 ? '0${year}' : '${year}';
  return '${strDay}/${strMonth}/${strYear}';
}

// function with "function as parameter"
void doSomeTask({int param1 = 0, int param2 = 0, Function? completion}) {
  print("Do something");
  completion!(param1 + param2); // ! khang dinh completion khong null
}
