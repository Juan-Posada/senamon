import 'dart:io';

import 'fase1.dart';
import 'fase2.dart';

void main(){

 

  //Varaibles
  int condicionTipoApp;

  //-----------------------------------------------------------------------------------------
  //Caso para tipo de aplicación
  print('''

    ⬛🟩⬛🟩⬛🟩⬛🟩 ⬛🟩⬛🟩⬛🟩⬛🟩 ⬛🟩⬛🟩⬛🟩⬛🟩 ⬛🟩⬛🟩⬛🟩⬛🟩 ⬛🟩⬛🟩⬛
                                         SENAMON
    ⬛🟩⬛🟩⬛🟩⬛🟩 ⬛🟩⬛🟩⬛🟩⬛🟩 ⬛🟩⬛🟩⬛🟩⬛🟩 ⬛🟩⬛🟩⬛🟩⬛🟩 ⬛🟩⬛🟩⬛

  ''');


  do {
    print('''

      ¡BIENVENIDO! 
      Selecciona tu tipo de juego;

      ____________________________
     |                            |
     | 1. FASE I                  |
     | 2. FASE II                 |
     | 0. SALIR                   |
     |                            |
      ----------------------------

    ''');
    condicionTipoApp = int.parse(stdin.readLineSync()!);

    switch (condicionTipoApp) {
      case 1:
         //LLamar método fase | indeS1
         fase1();
        break;
      case 2:
         //LLamar método fase || indeS2
         fase2();
      break;
      case 0:
      print('''

      Estás saliendo de tu Juego favorito
      -
      -
      Disfruta tu vida de mortal
      ¡Vuelve pronto!🤍

      ''');
      break;
      default:
        print('''

          ❌❌❌❌❌❌ OPCION EN DESARROLLO ❌❌❌❌❌❌

        ''');
        break;
    }
  } while (condicionTipoApp != 0 || condicionTipoApp == 1 || condicionTipoApp == 2);

}