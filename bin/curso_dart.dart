import 'dart:io';
import 'package:curso_dart/heranca.dart';
import 'package:curso_dart/teste_lista.dart';
import 'package:curso_dart/funcoes.dart';
import 'package:curso_dart/factory_animal.dart' as factory_animal;
import 'package:curso_dart/manipulando_temp_files.dart' as manipulando_temp_files;
import 'package:curso_dart/lista_recursiva.dart' as lista_recursiva;
import 'package:curso_dart/lendo_arquivos.dart' as lendo_arquivos;
import 'package:curso_dart/escrevendo_json.dart' as escrevendo_json;
import 'package:curso_dart/cotacao_financeira.dart' as cotacao_financeira;
import 'package:curso_dart/rodando_processos.dart' as rodando_processos;
import 'package:curso_dart/comunicacao_entre_processos.dart' as comunicacao_entre_processos;
import 'package:curso_dart/timers_e_callbacks.dart' as timers_e_callbacks;
import 'package:curso_dart/stream.dart' as stream;
import 'package:curso_dart/compressao_gzip.dart' as compressao_gzip;
import 'package:curso_dart/compressao_gzip_zlib.dart' as compressao_gzip_zip;
import 'package:curso_dart/servidor_socket_tcp.dart' as servidor_socket_tcp;
import 'package:curso_dart/client_socket_tcp.dart' as client_socket_tcp;
import 'package:curso_dart/client_server_socket_udp.dart' as client_server_socket_udp;
import 'package:curso_dart/http_post.dart' as http_post;
import 'package:curso_dart/manipula_bd.dart' as manipula_bd;
import 'package:curso_dart/lista_processos.dart' as lista_processos;

void main(List<String> arguments) async {

  lista_processos.main();

  //manipula_bd.main();

  //http_post.main();

  //await servidor_socket_tcp.main();
  //await client_socket_tcp.main();

  //client_server_socket_udp.main();

   //rodando_processos.main();

  //comunicacao_entre_processos.main();

  //timers_e_callbacks.main();

  //stream.main();

  //teste_lista(arguments);

  //fucoes(arguments);

  /*try {
    heranca();
  } catch (e) {
    print(e);
  }

  factory_animal.main(arguments);

  manipulando_temp_files.main();

  lista_recursiva.main();

  lendo_arquivos.main(arguments);

  escrevendo_json.main();

  cotacao_financeira.main();*/

}