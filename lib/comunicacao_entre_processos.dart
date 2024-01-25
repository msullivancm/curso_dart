import 'dart:io';
import 'dart:convert';

main() {
  Process.start('cat', []).then((Process process) {
    //Transformar saída em texto - listener
    process.stdout.transform(utf8.decoder).listen((data) {
      print(data);
    });

    //Escrever na entrada padrão
    process.stdin.writeln('Hello World');
    //Fechar a entrada padrão
    process.stdin.writeln('exit');

    //matar processo
    Process.killPid(process.pid);

    //Tratar o fim do processo
    process.exitCode.then((exitCode) {
      print('Exit code: $exitCode');
      process.kill();
    });

  });
}