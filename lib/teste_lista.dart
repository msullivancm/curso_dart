import 'dart:io';

void teste_lista(List<String> arguments) {
  List people = ['Leonardo', 'João', 'Maria'];
  print('Informe um índice!');

  var input = stdin.readLineSync();
  int index = input != null ? int.parse(input) : 0;

  print(people.elementAt(index));
}
