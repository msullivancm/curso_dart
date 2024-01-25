import 'dart:io';

main() {
  print("Início do main");
  Process.run("ls", ["-lisaht"]).then((ProcessResult results) {
    print(results.stdout);
    print("Código de saída: ${results.exitCode}") ;
  });
  print("Fim do main");
}