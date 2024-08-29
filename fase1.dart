import 'dart:io';

void fase1() {
  //Vector de entrenadores

  //Vector de Senamones

  //Varaibles

  int condicionTipoApp, opcionEntrenador, opcionSenamon;
  String cantidadInput;

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
      print('Introduce una opción (número entero):');
      try {
        condicionTipoApp = int.parse(stdin.readLineSync()!);
        break; // Salir del bucle si la conversión es exitosa
      } catch (e) {
        print('Por favor, introduce un número entero válido.');
      }
    }
    switch (condicionTipoApp) {
      //Menu de Entrenadores----------------
      case 1:
        do {
          print('''

      Menú Entrenadores
      ________________________________
     |                                |
     | 1. Crea tu entrenador          |
     | 2. Selecciona tu entrenador    |
     | 0. SALIR                       |
     |                                |
      --------------------------------

      ''');

          opcionEntrenador = int.parse(stdin.readLineSync()!);
          switch (opcionEntrenador) {
            case 1:
              break;
            case 2:
              print('''

      Estás saliendo del menú entrenador
      -
      -
      Vamos al siguiente paso
      
      ''');
              break;
            case 0:
              break;

            default:
              print('''

          ❌❌❌❌❌❌ OPCION EN DESARROLLO ❌❌❌❌❌❌

          ''');
              break;
          }
        } while (opcionEntrenador != 0 ||
            opcionEntrenador == 1 ||
            opcionEntrenador == 2);

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
              break;
            case 2:
              print('''

      Estás saliendo del menú senamon
      -
      -
      Vamos al siguiente paso
      
      ''');
              break;
            case 0:
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
