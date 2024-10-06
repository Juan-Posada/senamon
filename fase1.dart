import 'dart:io';

import 'Clases/Batalla.dart';
import 'Clases/Entrenador.dart';
import 'Clases/Senamon.dart';

List<Senamon> universoSenamon = [];
void fase1() {
  //Vector de entrenadores

  //Vector de Senamones
  //Universo Senamon
  universoSenamon = [
    Senamon(
        'Flama',
        1,
        5,
        6.5,
        80,
        75,
        'Senamon de fuego con habilidades explosivas',
        100.0,
        'Fuego',
        'Senamon de fuego'),
    Senamon(
        'Aguadriel',
        2,
        4,
        5.0,
        70,
        65,
        'Senamon de agua con habilidades de inundación',
        90.0,
        'Agua',
        'Senamon de agua'),
    Senamon(
        'Tornado',
        3,
        6,
        7.0,
        85,
        80,
        'Senamon de aire con habilidades ciclónicas',
        110.0,
        'Aire',
        'Senamon de aire'),
    Senamon(
        'Terracorn',
        2,
        7,
        8.0,
        95,
        85,
        'Senamon de tierra con habilidades sísmicas',
        120.0,
        'Tierra',
        'Senamon de tierra'),
    Senamon(
        'Inferno',
        1,
        6,
        7.0,
        90,
        85,
        'Senamon de fuego con habilidades incendiarias',
        105.0,
        'Fuego',
        'Senamon de fuego'),
    Senamon(
        'Marea',
        2,
        5,
        6.0,
        75,
        70,
        'Senamon de agua con habilidades de mareas',
        95.0,
        'Agua',
        'Senamon de agua'),
    Senamon(
        'Ventisca',
        3,
        4,
        5.5,
        80,
        60,
        'Senamon de aire con habilidades heladas',
        85.0,
        'Aire',
        'Senamon de aire'),
    Senamon(
        'Rocosa',
        4,
        6,
        9.0,
        100,
        90,
        'Senamon de tierra con habilidades rocosas',
        130.0,
        'Tierra',
        'Senamon de tierra'),
    Senamon(
        'Llama Verde',
        1,
        5,
        6.2,
        85,
        78,
        'Senamon de fuego con habilidades verdes',
        100.0,
        'Fuego',
        'Senamon de fuego'),
    Senamon(
        'Cascada',
        2,
        4,
        5.5,
        70,
        68,
        'Senamon de agua con habilidades de cascada',
        92.0,
        'Agua',
        'Senamon de agua'),
    Senamon(
        'Ráfaga',
        3,
        6,
        6.8,
        88,
        77,
        'Senamon de aire con habilidades rápidas',
        100.0,
        'Aire',
        'Senamon de aire'),
    Senamon(
        'Geodo',
        4,
        5,
        8.5,
        95,
        85,
        'Senamon de tierra con habilidades geológicas',
        115.0,
        'Tierra',
        'Senamon de tierra'),
    Senamon(
        'Fogata',
        1,
        6,
        7.5,
        90,
        80,
        'Senamon de fuego con habilidades de fogata',
        108.0,
        'Fuego',
        'Senamon de fuego'),
    Senamon(
        'Oleaje',
        2,
        6,
        6.0,
        77,
        72,
        'Senamon de agua con habilidades de oleaje',
        97.0,
        'Agua',
        'Senamon de agua'),
    Senamon(
        'Aire Fuerte',
        3,
        5,
        5.5,
        82,
        73,
        'Senamon de aire con habilidades fuertes',
        90.0,
        'Aire',
        'Senamon de aire'),
    Senamon(
        'Terraja',
        4,
        7,
        9.5,
        100,
        88,
        'Senamon de tierra con habilidades contundentes',
        125.0,
        'Tierra',
        'Senamon de tierra'),
    Senamon(
        'Rugido',
        1,
        5,
        6.8,
        84,
        80,
        'Senamon de fuego con habilidades rugientes',
        98.0,
        'Fuego',
        'Senamon de fuego'),
    Senamon(
        'Niebla',
        2,
        4,
        5.8,
        72,
        70,
        'Senamon de agua con habilidades de niebla',
        93.0,
        'Agua',
        'Senamon de agua'),
    Senamon(
        'Eólica',
        3,
        6,
        7.0,
        89,
        76,
        'Senamon de aire con habilidades eólicas',
        103.0,
        'Aire',
        'Senamon de aire'),
    Senamon(
        'Alud',
        4,
        6,
        8.0,
        98,
        84,
        'Senamon de tierra con habilidades de alud',
        120.0,
        'Tierra',
        'Senamon de tierra'),
    Senamon(
        'Ceniza',
        1,
        7,
        7.2,
        87,
        79,
        'Senamon de fuego con habilidades de ceniza',
        105.0,
        'Fuego',
        'Senamon de fuego'),
    Senamon(
        'Charco',
        2,
        5,
        6.3,
        73,
        68,
        'Senamon de agua con habilidades de charco',
        94.0,
        'Agua',
        'Senamon de agua'),
    Senamon(
        'Tempestad',
        3,
        7,
        7.5,
        91,
        78,
        'Senamon de aire con habilidades tempestuosas',
        108.0,
        'Aire',
        'Senamon de aire'),
    Senamon(
        'Duna',
        4,
        6,
        9.0,
        96,
        83,
        'Senamon de tierra con habilidades de duna',
        115.0,
        'Tierra',
        'Senamon de tierra')
  ];
  List<Senamon> senamones = [];
  List<Entrenador> entrenadores = [];

  //Varaibles
  int condicionTipoApp, opcionEntrenador, opcionSenamon;

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
   | 3.Batalla                  |
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
      //---------------- Menu de Entrenadores ----------------//
      case 1:
        print('''

      Menú de Entrenadores
      ________________________________
     |                                |
     | 1. Crea tu entrenador          |
     | 2. Selecciona tu entrenador    |
     | 3. Mostrar Entrenadores        |
     | 0. Salir                       | 
     |                                |
      --------------------------------

      ''');

        while (true) {
          print('Introduce una opción (número entero):');
          try {
            opcionEntrenador = int.parse(stdin.readLineSync()!);
            break; // Salir del bucle si la conversión es exitosa
          } catch (e) {
            print('Por favor, introduce un número entero válido.');
          }
        }

        menuEntrenadores(opcionEntrenador, entrenadores, universoSenamon);
        break;

      //Menu de Senamones-----------------
      case 2:
        print('''

      Menú Senamones
      ________________________________
     |                                |
     | 1. Crea un Senamon             |
     | 2. Cambiar senamones           |
     | 3. Entrenar senamones          |
     | 4. Alimentar senamones         |
     | 5. Mostrar universo Senamon    |
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
        menuSenamones(opcionSenamon, universoSenamon, senamones, entrenadores);
        break;
      case 3:
        // Asegúrate de que tienes al menos dos entrenadores disponibles
        if (entrenadores.length >= 2) {
          Entrenador entrenador1 = entrenadores[0];
          Entrenador entrenador2 = entrenadores[1];

          // Obtén el primer Senamon de cada entrenador
          Senamon senamon1 = entrenador1.obtenerSenamonVivo();
          Senamon senamon2 = entrenador2.obtenerSenamonVivo();

          // Crea la batalla, ahora puedes pasar null
          Batalla batalla = Batalla(entrenador1, entrenador2, senamon1,
              senamon2, null, DateTime.now(), '');
          batalla.iniciarBatalla(entrenador1, entrenador2, false);
        } else {
          print('Necesitas al menos 2 entrenadores para iniciar una batalla.');
        }
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

void menuEntrenadores(int opcionEntrenador, List<Entrenador> listaEntrenadores,
    List<Senamon> universoSenamon) {
  List<Senamon> universosSenamon = universoSenamon;
  List<Senamon> listadoSenamon = [];
  String? nombre, email, fecha;
  DateTime fechaNacimiento;
  int opcion, cantSemanon = 5, opcion1;
  do {
    switch (opcionEntrenador) {
      case 1:
        //---------------- CREACIÓN DE ENTRENADORES ----------------//
        if (listaEntrenadores.length < 2) {
          //---------------- Pedir datos al usuario ----------------//

          print("""
          
          Empecemos introduciendo la información del entrenador

          1. Nombre del entrenador.
          
          """);
          nombre = stdin.readLineSync();

          print("""
    
          2. Email del entrenador.
          
          """);
          email = stdin.readLineSync();

          print("""
    
          3. Introduce la fecha de necamiento (YYYY-MM-DD)
          
          """);
          fecha = stdin.readLineSync();

          print("""

          4. Seleccione los 5 senamones para el entrenador
          
          """);
          fechaNacimiento = DateTime.parse(fecha!);

          while (listadoSenamon.length < 5) {
            print("Senamones disponibles:");
            for (int i = 0; i < universoSenamon.length; i++) {
              print("${i + 1}. ${universoSenamon[i]}");
            }

            print(
                "Escribe el número del Senamon que quieres seleccionar (o 0 para terminar):");
            opcion1 = int.parse(stdin.readLineSync()!);

            if (opcion1 == 0) {
              break; // Salir si el usuario elige 0
            }

            if (opcion1 > 0 && opcion1 <= universoSenamon.length) {
              Senamon senamonSeleccionado = universoSenamon[opcion1 - 1];
              listadoSenamon.add(senamonSeleccionado);
              universoSenamon
                  .removeAt(opcion1 - 1); // Elimina el Senamon del universo
              print(
                  "${senamonSeleccionado.getNombre()} agregado a la lista de selección.");
            } else {
              print("Selección inválida, intenta de nuevo.");
            }
          }
          // Crear un nuevo entrenador usando los setters
          Entrenador entrenador1 = Entrenador(
              nombre!, email!, fechaNacimiento, 0, 0, 0, listadoSenamon);
          listaEntrenadores.add(entrenador1);

          print(
              "Entrenador ${entrenador1.getNombre()} creado y agregado a la lista.");
        } else {
          print("Ya tienes el máximo de 2 entrenadores.");
        }
        break;
      case 2:
        //---------------- ENTRENADORES PREDETERMINADOS ----------------//
        while (listadoSenamon.length < 5) {
          print("Senamones disponibles Para el entrenador 1:");
          for (int i = 0; i < universoSenamon.length; i++) {
            print("${i + 1}. ${universoSenamon[i]}");
          }

          print(
              "Escribe el número del Senamon que quieres seleccionar (o 0 para terminar):");
          opcion1 = int.parse(stdin.readLineSync()!);

          if (opcion1 == 0) {
            break; // Salir si el usuario elige 0
          }

          if (opcion1 > 0 && opcion1 <= universoSenamon.length) {
            Senamon senamonSeleccionado = universoSenamon[opcion1 - 1];
            listadoSenamon.add(senamonSeleccionado);
            universoSenamon
                .removeAt(opcion1 - 1); // Elimina el Senamon del universo
            print(
                "${senamonSeleccionado.getNombre()} agregado a la lista de selección.");
          } else {
            print("Selección inválida, intenta de nuevo.");
          }
        }
        Entrenador entrenadorPrede1 = Entrenador('jeferson', 'jefer@gmail.com',
            DateTime(13 - 04 - 2000), 0, 0, 0, listadoSenamon);
        while (listadoSenamon.length < 5) {
          print("Senamones disponibles Para el entrenador 2:");
          for (int i = 0; i < universoSenamon.length; i++) {
            print("${i + 1}. ${universoSenamon[i]}");
          }

          print(
              "Escribe el número del Senamon que quieres seleccionar (o 0 para terminar):");
          opcion1 = int.parse(stdin.readLineSync()!);

          if (opcion1 == 0) {
            break; // Salir si el usuario elige 0
          }

          if (opcion1 > 0 && opcion1 <= universoSenamon.length) {
            Senamon senamonSeleccionado = universoSenamon[opcion1 - 1];
            listadoSenamon.add(senamonSeleccionado);
            universoSenamon
                .removeAt(opcion1 - 1); // Elimina el Senamon del universo
            print(
                "${senamonSeleccionado.getNombre()} agregado a la lista de selección.");
          } else {
            print("Selección inválida, intenta de nuevo.");
          }
        }
        Entrenador entrenadorPrede2 = Entrenador('martin', 'mar@gmail.com',
            DateTime(25 - 10 - 2010), 0, 0, 0, listadoSenamon);
        print("""
        Seleccione un entrenador.
        Al momento de seleccionarlo, el restante de definirá autimaticamente.

          1. ${entrenadorPrede1.getNombre()}.
          2. ${entrenadorPrede2.getNombre()}.

        """);
        do {
          opcion = int.parse(stdin.readLineSync()!);
        } while (opcion < 1 || opcion > 2);

        if (opcion == 1) {
          listaEntrenadores.add(entrenadorPrede1);
          listaEntrenadores.add(entrenadorPrede2);
        } else {
          listaEntrenadores.add(entrenadorPrede2);
          listaEntrenadores.add(entrenadorPrede1);
        }

        break;
      case 3:
        //---------------- MOSTRAR ENTRENADORES ----------------//
        for (var entrenador in listaEntrenadores) {
          entrenador.mostrarInfoEntrenador();
          print(''); // Salto de línea para mejor formato
        }
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
  } while (opcionEntrenador != 0 ||
      opcionEntrenador == 1 ||
      opcionEntrenador == 2 ||
      opcionEntrenador == 3);
}

void menuSenamones(int opcionSenamon, List<Senamon> universoSenamon,
    List<Senamon> senamones, List<Entrenador> listaEntrenadores) {
  //---------------- VBLES DE LA FUNCION ----------------//

  List<Entrenador> listadoEntrenadores = List.from(listaEntrenadores);
  String nombre, descripcion, nombreTipo, descripcionTipo;
  int fase, nivel, puntosSalud, puntosAtaque;
  double peso, energia;
  do {
    switch (opcionSenamon) {
      case 1:
        //---------------- CREACIÓN DE SENAMON ----------------//
        print('''

        Empecemos introduciendo la información del entrenador
        
        1. Nombre del Senamon.
        
        ''');
        nombre = stdin.readLineSync()!;

        print('''
        
        2. Peso del Senamon.
        
        ''');
        peso = double.parse(stdin.readLineSync()!);

        print('''
        
        3. Energia del Senamon.
        
        ''');
        energia = double.parse(stdin.readLineSync()!);

        print('''
        
        4. Puntos de Salud.
        
        ''');
        puntosSalud = int.parse(stdin.readLineSync()!);

        print('''
        
        5. Puntos de Ataque
        
        ''');
        puntosAtaque = int.parse(stdin.readLineSync()!);

        print('''
        
        6. Nivel del senamon.
        
        ''');
        nivel = int.parse(stdin.readLineSync()!);

        print('''
        
        7. Fase en la que se encuentra el Senamon.
        
        ''');
        fase = int.parse(stdin.readLineSync()!);

        print('''

        8. Tipo de senamon.
        
        ''');
        nombreTipo = stdin.readLineSync()!;

        print('''
        
        9. Descripción del tipo
        
        ''');
        descripcionTipo = stdin.readLineSync()!;

        print('''
        
        10. Descripción General.
        
        ''');
        descripcion = stdin.readLineSync()!;

        // Crear un nuevo senamon usando los setters
        Senamon mySenamon = Senamon(nombre, fase, nivel, peso, puntosSalud,
            puntosAtaque, descripcion, energia, nombreTipo, descripcionTipo);
        universoSenamon.add(mySenamon);
        print("Senamon ${mySenamon.getNombre()} creado y agregado a la lista.");
        break;

      case 2:
        int numEntrenador;
        print("Seleccione el Entrenador que cambíará los senamones primero");
        numEntrenador = int.parse(stdin.readLineSync()!);
        numEntrenador -= 1;

        cambiarSenamones(listadoEntrenadores, numEntrenador);

      case 3:
        //---------------- ENTRENAR SENAMON ----------------//
        int opcionDeEntrenador;
        print('''

        Seleccione el Entrenador que cambíará los senamones primero:

        1. ${listaEntrenadores[0].getNombre()}
        2. ${listaEntrenadores[1].getNombre()}
        3. Salir

        ''');
        opcionDeEntrenador = int.parse(stdin.readLineSync()!);

        if (opcionDeEntrenador == 1) {
          listadoEntrenadores[0]
              .entrenarSenamon(opcionDeEntrenador, listadoEntrenadores);
        } else if (opcionDeEntrenador == 2) {
          listadoEntrenadores[1]
              .entrenarSenamon(opcionDeEntrenador, listadoEntrenadores);
        } else {
          print('Opción incorrecta');
        }

        break;
      case 4:
        //---------------- ALIMENTAR SENAMON ----------------//
        print('''
        
        Seleccione el Entrenador que alimentará un Senamon:

        1. ${listaEntrenadores[0].getNombre()}
        2. ${listaEntrenadores[1].getNombre()}
        3. Salir

        ''');
        int opcionDeEntrenador = int.parse(stdin.readLineSync()!);

        if (opcionDeEntrenador == 3) {
          break; // Salir del bucle
        }

// Seleccionar el entrenador y alimentar un Senamon
        if (opcionDeEntrenador == 1 || opcionDeEntrenador == 2) {
          Entrenador entrenadorSeleccionado =
              listaEntrenadores[opcionDeEntrenador - 1];

          print(
              "Selecciona un Senamon para alimentar de ${entrenadorSeleccionado.getNombre()}:");
          for (var i = 0; i < entrenadorSeleccionado.listaSenamon.length; i++) {
            print(
                "${i + 1}. ${entrenadorSeleccionado.listaSenamon[i].getNombre()} - Salud actual: ${entrenadorSeleccionado.listaSenamon[i].getPuntosSalud()}");
          }

          // Obtener la selección del usuario
          int seleccionSenamon = int.parse(stdin.readLineSync()!);

          // Validar si el Senamon está vivo antes de alimentarlo
          if (entrenadorSeleccionado.listaSenamon[seleccionSenamon - 1]
              .estaVivo()) {
            entrenadorSeleccionado.alimentarSenamon(seleccionSenamon);
          } else {
            print(
                "El Senamon seleccionado no está vivo y no puede ser alimentado.");
          }
        } else {
          print('Opción incorrecta');
        }
      case 5:
      //---------------- MOSTRAR UNIVERSO SENAMON ----------------//
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
  } while (opcionSenamon != 0 || opcionSenamon == 1 || opcionSenamon == 2);
}

int obtenerPosicion(List<dynamic> lista, String texto) {
  int numero = int.parse(stdin.readLineSync()!);
  while (numero > lista.length || numero <= 0) {
    print(texto);
    numero = int.parse(stdin.readLineSync()!);
  }
  return numero;
}

void cambiarSenamones(List<Entrenador> listadoEntrenadores, int numEntrenador) {
  int opcionSeleccion;
  do {
    print("*" * 30);
    print("1. Seleccionar Senamones");
    print("2. Salir");
    opcionSeleccion = int.parse(stdin.readLineSync()!);
    switch (opcionSeleccion) {
      case 1:
        print("TUS SENAMONES SELECCIONADOS");
        for (var i = 0;
            i < listadoEntrenadores[numEntrenador].listaSenamon.length;
            i++) {
          print(
              "${i + 1}. ${listadoEntrenadores[numEntrenador].listaSenamon[i].getNombre()}");
        }
        print("Ingresa el número del senamon que deseas cambiar");
        int numSenamon = obtenerPosicion(
                listadoEntrenadores[numEntrenador].listaSenamon,
                "Ingrese un número de senamon de su lista") -
            1;

        print("LISTA DE LOS SENAMONES QUE NO HAS SELECCIONADO");
        for (var i = 0; i < universoSenamon.length; i++) {
          print("${i + 1}. ${universoSenamon[i].getNombre()}");
        }

        print(
            "Ingresa el número del senamon que deseas reemplazar por ${listadoEntrenadores[numEntrenador].listaSenamon[numSenamon].getNombre()}");
        int numSenamonNuevo = obtenerPosicion(
                universoSenamon, "Ingrese un número de senamon válido") -
            1;

        // Agregar el senamon a universoSenamon y remover el seleccionado de la lista del entrenador
        universoSenamon
            .add(listadoEntrenadores[numEntrenador].listaSenamon[numSenamon]);
        listadoEntrenadores[numEntrenador].listaSenamon.removeAt(numSenamon);

        // Añadir el nuevo Senamon a la lista del entrenador y removerlo de universoSenamon
        listadoEntrenadores[numEntrenador]
            .listaSenamon
            .add(universoSenamon[numSenamonNuevo]);
        universoSenamon.removeAt(numSenamonNuevo);

        print("ESTOS SON LOS SENAMONES CON LOS QUE QUEDASTE");
        for (var i = 0;
            i < listadoEntrenadores[numEntrenador].listaSenamon.length;
            i++) {
          print(
              "${i + 1}. ${listadoEntrenadores[numEntrenador].listaSenamon[i].getNombre()}");
        }
        break;
      case 2:
        print("Has salido del menú de seleccionar senamones");
        break;
      default:
        print("Ingrese una opción correcta");
        break;
    }
  } while (opcionSeleccion != 2);
}
