import 'dart:io';
import 'dart:convert';

void main() {
  String dados = ' ';
  for (int i = 0; i < 100; i++) {
    dados += 'Olá mundo!\r\n';
  }

  List<int> original = utf8.encode(dados);
  print('Original: ${original.length} bytes');
  List<int> compressed = gzip.encode(original);
  print('Compressed: ${compressed.length} bytes');
  List<int> decompressed = gzip.decode(compressed);
  print('Decompressed: ${decompressed.length} bytes');

  String decoded = utf8.decode(decompressed);
  assert(dados == decoded);

  print('Decoded: $decoded');
}
