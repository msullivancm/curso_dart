import 'dart:io';
import 'dart:convert';

void main() {
  var dados = '';

  geraDados(dados);

  testaCompressao(GZipCodec(), dados);
  testaCompressao(ZLibCodec(), dados);

}

void geraDados(dados) {
  for (int i = 0; i < 100000; i++) {
    dados += 'Olá mundo!\r\n';
  }
}

void testaCompressao(compressor, dados) {
  List<int> original = utf8.encode(dados);
  List<int> comprimido = compressor.encode(original);
  List<int> descomprimido = compressor.decode(comprimido);
  print('Comprimido é ${comprimido.length} bytes');
  print('Descomprimido é ${descomprimido.length} bytes');
  String decoded = utf8.decode(descomprimido);
  assert(dados == decoded);
}