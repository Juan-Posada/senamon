import 'dart:io';

import 'Clases/Entrenador.dart';
import 'Clases/Senamon.dart';

void fase1() {
  //Vector de entrenadores

  //Vector de Senamones
  //Universo Senamon
  List<Senamon> universoSemon = [];
  List<Entrenador> entrenadores = [];

  //Varaibles
  int cantSemanon = 5;
  int condicionTipoApp, opcionEntrenador, opcionSenamon;
  String cantidadInput;

  //ENTRENADORES PREDETERMINADOS
  Entrenador entrenadorPrede1 = Entrenador(
      'jeferson', 'jefer@gmail.com', DateTime(13 - 04 - 2000), 0, 0, 0);
  Entrenador entrenadorPrede2 =
      Entrenador('martin', 'mar@gmail.com', DateTime(25 - 10 - 2010), 0, 0, 0);

  print('''

      ⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜

                        FASE I (Senamon)

      ⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜

      ''');

  do {
    print('''

    ¡Hola de nuevo, Hermoso!
    Selecciona tu tipo de juego:

    ____________________________
   |                            |
   | 1.Menú Entrenadores        |
   | 2.Menú Senamones           |
   | 0.Salir                    |
   |                            |
    ----------------------------

  ''');
    while (true) {
      print('Introduce una opción:');
      try {
        condicionTipoApp = int.parse(stdin.readLineSync()!);
        break; // Salir del bucle si la conversión es exitosa
      } catch (e) {
        print('Por favor, introduce una opcion correcta.');
      }
    }
    switch (condicionTipoApp) {
      //Menu de Entrenadores----------------
      case 1:
        print('''

      Menú de Entrenadores
      ________________________________
     |                                |
     | 1. Crea tu entrenador          |
     | 2. Selecciona tu entrenador    |
     | 0. SALIR                       |
     |                                |
      --------------------------------

      ''');

        opcionEntrenador = int.parse(stdin.readLineSync()!);

        menuEntrenadores(opcionEntrenador);
        break;

      //Menu de Senamones-----------------
      case 2:
        do {
          print('''

      Menú Entrenadores
      ________________________________
     |                                |
     | 1. Crea tus Senamones          |
     | 2. Selecciona tus senamones    |
     | 0. SALIR                       |
     |                                |
      --------------------------------

      ''');

          while (true) {
            print('Introduce una opción (número entero):');
            try {
              opcionSenamon = int.parse(stdin.readLineSync()!);
              break; // Salir del bucle si la conversión es exitosa
            } catch (e) {
              print('Por favor, introduce un número entero válido.');
            }
          }
          switch (opcionSenamon) {
            case 1:
              //llamar al metodo senamon
              break;
            case 2:
              //seleccionar el senamon
              for (var i = 0; i <= cantSemanon; i++) {
                Senamon newPokemon =
                    Senamon("FFFF", 1, 1, 3.5, 1, 1, "GGGG", 1.4);
                universoSemon.add(newPokemon);
                print(newPokemon);
              }
              break;
            case 0:
              print('''

      Estás saliendo del menú senamon
      -
      -
      Vamos al siguiente paso
      
      ''');
              break;

            default:
              print('''

          ❌❌❌❌❌❌ OPCION EN DESARROLLO ❌❌❌❌❌❌

          ''');
              break;
          }
        } while (
            opcionSenamon != 0 || opcionSenamon == 1 || opcionSenamon == 2);
        break;

      //Salir
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
  } while (
      condicionTipoApp != 0 || condicionTipoApp == 1 || condicionTipoApp == 2);
}

void menuEntrenadores(int opcionEntrenador) {
  do {
    switch (opcionEntrenador) {
      case 1:
        //llamar al metodo entrenador para crear al entrenador
        
        break;
      case 2:
        //seleccionar entrenador

        break;
      case 0:
        print('''

      Estás saliendo del menú entrenador
      
      -
      Vamos al siguiente paso
      
      ''');
        break;

      default:
        print('''

          ❌❌❌❌❌❌ OPCION EN DESARROLLO ❌❌❌❌❌❌

          ''');
        break;
    }
  } while (
      opcionEntrenador != 0 || opcionEntrenador == 1 || opcionEntrenador == 2);
}
