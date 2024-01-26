import 'dart:io';

main() async {

  bool loop = true;

  var socket = await Socket.connect('127.0.0.1', 3000);

  while(loop) {
    print('Conectado! O que você quer falar? ');
    var mensagem = stdin.readLineSync();
    socket.write(mensagem);
    if (mensagem == 'sair') {
      loop = false;
    }
  }

  await socket.close();
  exit(0);
}

// Path: lib/compressao_gzip.dart
// import 'dart:io';
// import 'dart:convert';
//
// void main() {
//   var encoder = GZipEncoder();
//   var compressed = encoder.encode('Hello world!');
//   print(compressed);
//   print(String.fromCharCodes(compressed));
//   var decoder = GZipDecoder();
//   var decompressed = decoder.decodeBytes(compressed);
//   print(decompressed);
//   print(String.fromCharCodes(decompressed));
// }

// Path: lib/compressao_gzip_zlib.dart
// import 'dart:io';

// void main() {
//   var encoder = ZLibEncoder();
//   var compressed = encoder.encode('Hello world!');
//   print(compressed);
//   print(String.fromCharCodes(compressed));
//   var decoder = ZLibDecoder();
//   var decompressed = decoder.decodeBytes(compressed);
//   print(decompressed);
//   print(String.fromCharCodes(decompressed));
// }
