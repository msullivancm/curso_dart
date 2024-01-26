import 'dart:io';
import 'dart:convert';

main() async {
  var serverSocket = await ServerSocket.bind('127.0.0.1', 3000);
  print('Escutando conexões em ${serverSocket.address}:${serverSocket.port}');

  await for (var socket in serverSocket) {
    socket.listen((List<int> values) {
      print('Recebido: ${utf8.decode(values)} de ${socket.remoteAddress}:${socket.remotePort}');
      socket.write('Recebi sua mensagem\n');
    });
  }
}