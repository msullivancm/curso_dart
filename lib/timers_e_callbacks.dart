import 'dart:async';

int counter = 0;

main(){
  print('Inicio: ${getTime()}');
  Timer timer = Timer.periodic(Duration(seconds: 2), timeout);
  print('Fim: ${getTime()}');
}

void timeout(Timer timer){
  print('Esperar: ${getTime()}');
  counter++;
  if(counter >= 5){
    timer.cancel();
  }
}

String getTime(){
  DateTime dt = DateTime.now();
  return dt.toString();
}