import 'dart:io';

void fase2(){
  //Vector de entrenadores
  
  //Vector de Senamones

  //Varaibles
  int condicionTipoApp;

    print('''

      ⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜

                        FASE II (Senamon)
                        
      ⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜

      ''');
  do {
    print('''

    ¡Hola de nuevo, Hermoso!
    Selecciona tu tipo de juego:

    ____________________________
   |                            |
   | 1.Opcion predefinida       |
   | 2.Opcion indefinida        |
   | 0.Salir                    |
   |                            |
    ----------------------------

  ''');
  condicionTipoApp = int.parse(stdin.readLineSync()!);
  switch (condicionTipoApp) {
    case 1:

      break;
    case 2:

      break;
    case 0:

      break;
    default:

      break;
  }

  } while (condicionTipoApp != 0);
  
}