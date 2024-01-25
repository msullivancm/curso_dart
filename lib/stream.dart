import 'dart:async';

main() {

  var listaDeEventos = <dynamic>[];

  var controlador = StreamController<dynamic>();
  var strem = controlador.stream;

  strem.listen((onData) {
    print('Evento disparado: $onData');
    listaDeEventos.add(onData);
  }, onDone: ()  {
    print('Stream finalizada!');
    print(listaDeEventos);
  });

  controlador.sink.add('Leonardo');
  controlador.sink.add(24);
  controlador.sink.add('Brasil');
  controlador.sink.add('Curso de Dart');
  controlador.close();

  print('Canal aberto...');
}