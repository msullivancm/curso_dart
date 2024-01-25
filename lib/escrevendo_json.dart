import 'dart:io';
import 'dart:convert';

main() {

  Map<String, String> data = Map();
  data.putIfAbsent('1', () => 'João');
  data.putIfAbsent('2', () => 'Maria');
  data.putIfAbsent('3', () => 'Pedro');
  data.putIfAbsent('4', () => 'Roberto');
  data.putIfAbsent('5', () => 'Júlia');

  Directory dir = Directory.current;
  File file = new File(dir.path + '/meu_arquivo.txt');

  writeFile(file, json.encode(data).toString());
}

void writeFile(File file, String data) {

  RandomAccessFile raf = file.openSync(mode: FileMode.write);
  raf.writeStringSync(data);
  raf.flushSync();
  raf.closeSync();
}