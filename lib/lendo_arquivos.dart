import 'dart:io';

main(List<String> arguments) {

  Directory dir = Directory.current;
  print('Diretório que estamos: ${dir.path}');

  //File file = new File(dir.path + '/meu_arquivo.txt');
  File file = new File('/home/sullivan/IdeaProjects/curso_dart/curso_dart.iml');

  readFile(file);
}

void readFile(File file) {

  if(!file.existsSync()) {
    print('Arquivo não encontrado!');
    return;
  }

  print('Iniciando leitura...');
  print(file.readAsStringSync());

  print('Lendo os bytes....');
  List values = file.readAsBytesSync();
  values.forEach((value) => print(value));

}