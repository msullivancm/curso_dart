void heranca() {


  print('\n################ Dados do cliente ################\n');

  var client1 = Client();
  client1.name = 'João da Silva';
  client1.cpf = '111111111211';
  assert(client1.cpf.length == 11, 'CPF inválido');
  client1.address = 'Av. Skywalker, s/n. Bairro do império';

  client1.cameIn();
  print(client1.toString());
  client1.cameOut();


  print('\n################ Dados do empregado ################\n');

  var employee1 = Employee();

  employee1.name = 'Luke Skywalker';
  employee1.cpf = '22222222222';
  employee1.phone = '23422442';
  employee1.mom = 'Padmé Amidala';
  employee1._registrationCode = 1234;

  employee1.cameIn();
  print(employee1.toString());
  employee1.cameOut();

}


class Client extends Person {
  late String address;
}

class Employee extends Person{
  late String mom;
  late String phone;
  late int _registrationCode;

  int get registrationCode => _registrationCode;

  String toString() {
    return 'Nome: ${this.name}\nCpf: ${this.cpf}\n'
        'Telefone: ${this.phone}\nMãe: ${this.mom}\n'
        'Código de registro: ${this.registrationCode}';
  }
}

class Person {
  late String name;
  late String cpf;

  void cameIn() {
    print('Entrada: ${_dateTime()}');
  }

  void cameOut() {
    print('Saída: ${_dateTime()}');
  }

  String _dateTime() {

    DateTime today = new DateTime.now();
    String dateSlug = '${today.day.toString().padLeft(2,'0')}/${today.month.toString().padLeft(2,'0')}/${today.year.toString()}';
    dateSlug += ' ${today.hour.toString().padLeft(2,'0')}:${today.minute.toString().padLeft(2,'0')}:${today.second.toString().padLeft(2,'0')}';

    return dateSlug;
  }

  String toString() => 'Nome: ${this.name}\nCpf: ${this.cpf}';
}