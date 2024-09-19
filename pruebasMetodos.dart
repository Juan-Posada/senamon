import 'dart:io';

void main() {
  
  List<String> holis = ['Juandi', 'Dani', 'Posada'];
  int caso;

do {
  for (var i = 0; i < holis.length; i++) {
    print('${i+1}. ${holis[i]}');
  }
  print('Selecciona tu boludo favorito');
  caso = int.parse(stdin.readLineSync()!);

  switch (caso) {
    case 1:
      print(holis[0]);
      break;
    case 2:
      print(holis[1]);
      break;
    case 3:
      print(holis[2]);
      break;
    default:
  }
} while (caso != 0 || caso != 1 || caso != 2);
  

}

 void lanzarMoneda() {
  List<String> moneda = ['Cara', 'Sello'];
   for (var i = 0; i < 1; i++) {
       moneda.shuffle();
       print(moneda[i]);
    }


  } 
