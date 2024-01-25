import 'dart:io';
import 'package:curso_dart/heranca.dart';
import 'package:curso_dart/teste_lista.dart';
import 'package:curso_dart/funcoes.dart';
import 'package:curso_dart/factory_animal.dart' as factory_animal;
import 'package:curso_dart/manipulando_temp_files.dart' as manipulando_temp_files;
import 'package:curso_dart/lista_recursiva.dart' as lista_recursiva;
import 'package:curso_dart/lendo_arquivos.dart' as lendo_arquivos;

void main(List<String> arguments) {

  //teste_lista(arguments);

  //fucoes(arguments);

  try {
    heranca();
  } catch (e) {
    print(e);
  }

  factory_animal.main(arguments);

  manipulando_temp_files.main();

  lista_recursiva.main();

  lendo_arquivos.main(arguments);
}