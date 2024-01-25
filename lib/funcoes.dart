void fucoes(List<String> arguments) {

  test();
  sayHello('Aluno(a)');

  print(centimetersToMeters(100));

  String fullname = completeName('Leonardo', 'Marinho');
  print(fullname);
}


void test() {
  print('Esse é um teste!');
}

void sayHello(String name) {
  print('Olá $name');
}

double centimetersToMeters(num cm) {
  return cm / 100.0;
}

String completeName(String firstname, String lastname) {
  return '$firstname $lastname';
}