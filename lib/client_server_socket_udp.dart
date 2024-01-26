import 'dart:io';
import 'dart:convert';

main() {
  var data = 'Hello, World!';

  List<int> dataToSend = utf8.encode(data);
  int port = 3000;

  //Servidor
  RawDatagramSocket.bind(InternetAddress.loopbackIPv4, port)
    .then((RawDatagramSocket udpSocket) {
      udpSocket.listen((RawSocketEvent event) {
        if (event == RawSocketEvent.read) {
          Datagram? dg = udpSocket.receive();
          print(utf8.decode(dg!.data));
        }
      });

      //Cliente
      udpSocket.send(dataToSend, InternetAddress.loopbackIPv4, port);
    });
}

