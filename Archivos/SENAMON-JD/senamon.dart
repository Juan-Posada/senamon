import 'dart:io';
import 'dart:math';
import 'Entrenadores.dart';
import 'Senamones.dart';

void main(List<String> args) {
  List<Entrenadores> entrenadores = []; //Lista que guardará todos los entrenadores
  List<Senamones> senamones = []; //Lista que guardará los senamones de cada entrenador
  List<Senamones> senamonesGlobales = []; //Lista que guardará a todos los senamones
  String nombreEntrenador; //Nombre del entrenador
  String emailEntrenador; //Email del entrenador
  DateTime fechaNacimientoEntrenador;//fecha de nacimiento del entrenador

  /*
  CREACIÓN DE LOS SENAMONES
   */
  //Fuego
  Senamones senamon1 = Senamones("Drolo", 0, "Fuego", 20, 2000, 400, 1, 100, "Un Senamon que tiene una buena vida y pega bastante bien. No tendrá nada de piedad para los senamones eléctricos. Le gusta comer rocas, no le preguntes por qué");
  Senamones senamon2 = Senamones("Fromo", 0, "Fuego", 5, 500, 1000, 1, 100, "Pequeño pero peligrosom, este senamon a pesar de tener poca vida le dará una paliza a sus adversarios. Es muy tierno, pero no fies de eso");
  Senamones senamon3 = Senamones("Drogo", 0, "Fuego", 100, 5000, 200, 1, 100, "Un grandulón que servirá como bolsa de boxeo y ayudará como defensa, pues a pesar de no dar duros golpes resiste muchos de ellos. Es alguien muy amable, pero solo con sus cercanos");
  Senamones senamon16 = Senamones("Orloc", 0, "Fuego", 50, 1000, 800, 1, 100, "Un ninja que tira estrellas ninjas en llamas");
  //Agua
  Senamones senamon4 = Senamones("Gulu", 0, "Agua", 40, 2000, 400, 1, 100, "Este senamon es ágil para dar buenos golpes, y resistir bastante. Le encantan las flores, en especial las azules");
  Senamones senamon5 = Senamones("Luju", 0, "Agua", 5, 500, 1000, 1, 100, "Este senamon es pequeñamente peligroso, sabe dar buenos golpes. Es muy agresivo con los grandulones");
  Senamones senamon6 = Senamones("Cucu", 0, "Agua", 150, 5000, 400, 1, 100, "Un Senamon bastante pesado que servirá para resistir fuertes ataques, ama ir a la playa");
  Senamones senamon17 = Senamones("Zulu", 0, "Agua", 120, 1000, 800, 1, 100, "Es un caballito de mar bastante grande que sus chapuzones no se sienten frescos");
  //Hierva
  Senamones senamon7 = Senamones("Fever", 0, "Hierva", 1, 2000, 400, 1, 100, "Un Senamon muy balanceado, mantiene en temperaturas calientes");
  Senamones senamon8 = Senamones("Hetler", 0, "Hierva", 0.5, 500, 1000, 1, 100, "Le gusta matar judios, mantiene un poco volado de este mundo");
  Senamones senamon9 = Senamones("Mender", 0, "Hierva", 5, 5000, 400, 1, 100, "Un Senamon robusto, el que más pesa de su especie, aunque todos ellos son muy libianos");
  Senamones senamon18 = Senamones("Ermes", 0, "Hierva", 2, 1000, 800, 1, 100, "Es una planta carnívora que da buenos mordiscos");
  //Volador
  Senamones senamon10 = Senamones("Darla", 0, "Volador", 20, 2000, 400, 1, 100, "Un senamon que sabe lo que es el ataque y la defensa, duerme en las nubes");
  Senamones senamon11 = Senamones("Fala", 0, "Volador", 30, 500, 1000, 1, 100, "Un senamon que ataca fuertemente desde el aire, no se sabe cómo puede volar con tanto peso");
  Senamones senamon12 = Senamones("Barsa", 0, "Volador", 2, 5000, 200, 1, 100, "Un senamon que aguanta bastantes golpes, no se sabe cómo si es tan pequeño");
  Senamones senamon19 = Senamones("Araca", 0, "Volador", 10, 1000, 8000, 1, 100, "Es un indígena bastante agresivo");
  //Eléctrico
  Senamones senamon13 = Senamones("Diritiri", 0, "Electrico", 12, 2000, 400, 1, 100, "Un senamon muy sabio que sabe utilizar las dos habilidades de ataque y defensa");
  Senamones senamon14 = Senamones("Firili", 0, "Electrico", 4, 500, 1000, 1, 100, "Una pequeña chispa de electricidad que carga toda su energía en un enemigo");
  Senamones senamon15 = Senamones("Mirli", 0, "Electrico", 50, 5000, 400, 1, 100, "Un senamon grande, con demasiada energía que logra soportar fuertes golpes, pero le tiene miedo a los senamones de fuego");
  Senamones senamon20 = Senamones("Imirsis", 0, "Electrico", 30, 1000, 800, 1, 100, "Es una ratica que lanza rayos por la cola");
  //Guardar todos los senamones en la lista de senamonesGlobales
  senamonesGlobales = [senamon1, senamon2, senamon3, senamon4, senamon5, senamon6, senamon7, senamon8, senamon9, senamon10, senamon11, senamon12, senamon13, senamon14, senamon15, senamon16, senamon17, senamon18, senamon19, senamon20];
  /********************************************************************* */
  print("BIENVENID@ AL MUNDO SENAMON");
  print("Un mundo lleno de amigos que te ayudarán a tomar tu lugar en la cima y ganar el torneo");
  print("¿Cuál es tu nombre?");
  nombreEntrenador = stdin.readLineSync()!;
  print("¿Por donde nos cumnicaremos contigo?, ingresa tu email");
  emailEntrenador = stdin.readLineSync()!;
  print("Introduce tu fecha de nacimiento (año-mes-dia)");
  fechaNacimientoEntrenador = DateTime.parse(stdin.readLineSync()!);
  print("Perfecto, ya has sido inscrito a los entrenadores de Senamones");
  print("*"*30);
  print("Elige 5 Senamones con los que quieras luchar, luego los podrás cambiar");
  Entrenadores entrenador1 = Entrenadores(nombreEntrenador, emailEntrenador, fechaNacimientoEntrenador, 0, 0, List.from(senamones), List.from(senamonesGlobales)); //List.from funciona para poder usar la lista sin modificarla
  entrenadores.add(entrenador1);
  for (var i = 0; i < 5; i++) {
    for (var j = 0; j < entrenador1.senamonesGlobales.length; j++) {
      print("${j + 1}. ${entrenador1.senamonesGlobales[j].nombre}, ${entrenador1.senamonesGlobales[j].descripcionSenamon}.");
      print("_"*100);
    }
    print("Ingresa el número del senamon #${i + 1}");
    int numero = validarPosicion(entrenador1.senamonesGlobales, "Ingrese un senamon que esté en la lista");
    entrenador1.senamones.add(entrenador1.senamonesGlobales[numero - 1]);
    entrenador1.senamonesGlobales.removeAt(numero - 1);
  }
  print("Tus senamones elegidos son los siguientes:");
  for (var i = 0; i < entrenador1.senamones.length; i++) {
    print("${i + 1}. ${entrenador1.senamones[i].nombre}");
  }
  //ENTRENADOR 2
  print("Hora de que tu compañero se inscriba");
  print("¿Cuál es tu nombre?");
  nombreEntrenador = stdin.readLineSync()!;
  print("¿Por donde nos cumnicaremos contigo?, ingresa tu email");
  emailEntrenador = stdin.readLineSync()!;
  print("Introduce tu fecha de nacimiento (año-mes-dia)");
  fechaNacimientoEntrenador = DateTime.parse(stdin.readLineSync()!);
  print("Perfecto, ya has sido inscrito a los entrenadores de Senamones");
  print("*"*30);
  print("Elige 5 Senamones con los que quieras luchar, luego los podrás cambiar");
  Entrenadores entrenador2 = Entrenadores(nombreEntrenador, emailEntrenador, fechaNacimientoEntrenador, 0, 0, List.from(senamones), List.from(senamonesGlobales)); 
  for (var i = 0; i < 5; i++) {
    for (var j = 0; j < entrenador2.senamonesGlobales.length; j++) {
      print("${j + 1}. ${entrenador2.senamonesGlobales[j].nombre}, ${entrenador2.senamonesGlobales[j].descripcionSenamon}.");
      print("_"*100);
    }
    print("Ingresa el número del senamon #${i + 1}");
    int numero = validarPosicion(entrenador2.senamonesGlobales, "Ingrese un senamon que esté en la lista");
    entrenador2.senamones.add(entrenador2.senamonesGlobales[numero - 1]);
    entrenador2.senamonesGlobales.removeAt(numero - 1);
  }
  print("Tus senamones elegidos son los siguientes:");
  for (var i = 0; i < entrenador2.senamones.length; i++) {
    print("${i + 1}. ${entrenador2.senamones[i].nombre}");
  }
  entrenadores.add(entrenador2);
  //MENÚ SENAMON -----------------------------------------------------------------------------
  int opcion;
    do {
      int numEntrenador;
      print("Seleccione el entrenador que va a usar el menú (1 o 2)");
      numEntrenador = int.parse(stdin.readLineSync()!);
      numEntrenador -= 1;
      print("Entrenador seleccionado: ${entrenadores[numEntrenador].nombre}");
      print("MENÚ SENAMON");
      print("1. SELECIONAR SENAMONES");
      print("2. VER SENAMONES");
      print("3. ENTRENAR SENAMONES");
      print("4. INFORMACION");
      print("5. BATALLA");
      print("6. CREAR SENAMONES");
      print("7. Salir");
      opcion = int.parse(stdin.readLineSync()!);
      
      switch (opcion) {
        case 1:
          seleccionarSenamones(numEntrenador, entrenadores);
          break;

        case 2:
          verSenamones(numEntrenador, entrenadores);
          break;

        case 3:
          entrenarSenamones(numEntrenador, entrenadores);
          break;

        case 4:
          informacion(numEntrenador, entrenadores);
          break;

        case 5:
          batalla(numEntrenador, entrenadores);
          break;

        case 6:
          crearSenamones(numEntrenador, entrenadores);
          break;

        case 7:
          print("ESPERO QUE TE HAYA GUSTADO EL MUNDO SENAMON, ESPERO QUE NOS VEAMOS PRONTO");
          print("Saliendo...");
          break;
        
        default:
          print("Ingrese un número correcto");
          break;
      }
    } while (opcion != 7);
}

void seleccionarSenamones(int numEntrenador, List<Entrenadores> entrenadores){
  int opcion;
  do {
    print("*"*30);
    print("1. Seleccionar Senamones");
    print("2. Salir");
    opcion = int.parse(stdin.readLineSync()!);
    switch(opcion){
      case 1:
        print("TUS SENAMONES SELECCIONADOS");
        for (var i = 0; i < entrenadores[numEntrenador].senamones.length; i++) {
          print("${i + 1}. ${entrenadores[numEntrenador].senamones[i].nombre}");
        }
        print("Ingresa el numero del senamon que deseas cambiar");
        int numSenamon = validarPosicion(entrenadores[numEntrenador].senamones, "Ingrese un número de senamon de su lista") - 1;
        print("LISTA DE LOS SENAMONES QUE NO HAS SELECCIONADO");
        for (var i = 0; i < entrenadores[numEntrenador].senamonesGlobales.length; i++) {
          print("${i + 1}. ${entrenadores[numEntrenador].senamonesGlobales[i].nombre}");
        }
        print("Ingresa el número del senamon que deseas reemplazar por ${entrenadores[numEntrenador].senamones[numSenamon].nombre}");
        int numSenamonNuevo = validarPosicion(entrenadores[numEntrenador].senamonesGlobales, "Ingrese un número de senamon válido") - 1;
        entrenadores[numEntrenador].senamonesGlobales.add(entrenadores[numEntrenador].senamones[numSenamon]);
        entrenadores[numEntrenador].senamones.removeAt(numSenamon);
        entrenadores[numEntrenador].senamones.add(entrenadores[numEntrenador].senamonesGlobales[numSenamonNuevo]);
        entrenadores[numEntrenador].senamonesGlobales.removeAt(numSenamonNuevo);
        print("ESTOS SON LOS SENAMONES CON LOS QUE QUEDASTE");
        for (var i = 0; i < entrenadores[numEntrenador].senamones.length; i++) {
          print("${i + 1}. ${entrenadores[numEntrenador].senamones[i].nombre}");
        }
        break;
      case 2:
        break;
      default:
        print("Ingrese una opción correcta");
        break;
    }
  } while (opcion != 2);
}

void verSenamones(int numEntrenador, List<Entrenadores> entrenadores){
  int opcion;
  do {
    print("*"*30);
    print("1. Ver información sobre un senamon seleccionado");
    print("2. Ver información sobre un senamon no seleccionado");
    print("3. Salir");
    opcion = int.parse(stdin.readLineSync()!);
    switch(opcion){
      case 1:
        print("SENAMONES ELEGIDOS");
        for (var i = 0; i < entrenadores[numEntrenador].senamones.length; i++) {
          print("${i + 1}. ${entrenadores[numEntrenador].senamones[i].nombre}");
        }
        print("Ingresa el número del senamon que deseas ver su información");
        int numSenamon = validarPosicion(entrenadores[numEntrenador].senamones, "Elija un senamon que esté dentro de la lista");
        entrenadores[numEntrenador].senamones[numSenamon - 1].mostrarInfo();
        break;
      
      case 2:
        print("SENAMONES NO ELEGIDOS");
        for (var i = 0; i < entrenadores[numEntrenador].senamonesGlobales.length; i++) {
          print("${i + 1}. ${entrenadores[numEntrenador].senamonesGlobales[i].nombre}");
        }
        print("Ingresa el número del senamon que deseas ver su información");
        int numSenamon = validarPosicion(entrenadores[numEntrenador].senamonesGlobales, "Elija un senamon que esté dentro de la lista");
        entrenadores[numEntrenador].senamonesGlobales[numSenamon - 1].mostrarInfo();
        break;
      
      case 3:
        break;

      default:
        print("Ingrese una opción correcta");
        break;
    }
  } while (opcion != 3);
}

void entrenarSenamones(int numEntrenador, List<Entrenadores> entrenadores){
  int opcion;
  do {
    print("1. Entrenar Senamon");
    print("2. Salir");
    opcion = int.parse(stdin.readLineSync()!);
    switch(opcion){
      case 1:
        if(entrenadores[numEntrenador].nivel >= 200){
          print("Ingrese al senamon que desea entrenar");
          print("SENAMONES");
          for (var i = 0; i < entrenadores[numEntrenador].senamones.length; i++) {
            print("${i + 1}. ${entrenadores[numEntrenador].senamones[i].nombre}");
          }
          int numSenamon = validarPosicion(entrenadores[numEntrenador].senamones, "Ingrese un número válido");
          entrenadores[numEntrenador].senamones[numSenamon].subirNivel();
          entrenadores[numEntrenador].nivel -= 200;
          print("Tu nivel de experiencia quedó de: ${entrenadores[numEntrenador].nivel}");
        }else{
          print("No tienes suficiente experiencia para mejorar al senamon, necesitas por lo menos 200 puntos");
        }
        break;

      case 2:
        break;
      
      default:
        print("Ingrese una opción correcta");
        break;
    }
  } while (opcion != 2);
}

void informacion(numEntrenador, List<Entrenadores> entrenadores){
  entrenadores[numEntrenador].mostrarInfo();
}

void batalla(numEntrenador, List<Entrenadores> entrenadores){
  int opcion;
  do {
    print("1. Lanzar moneda");
    print("2. Iniciar batalla");
    print("3. Salir");
    opcion = int.parse(stdin.readLineSync()!);
    switch(opcion){
      case 1:
        Random random = Random();
        print("Eligiendo entre cara o cruz...");
        List<String> moneda = ["Cara", "Cruz"];
        print("Se ha elegido el lado ${moneda[random.nextInt(2)]}");
        break;

      case 2:
        print("La batalla comenzará, recuerden que de manera predeterminada iniciarán con su primer senamon de la lista");
        batallaIniciada(numEntrenador, entrenadores);
        opcion = 3;
        break;
      
      case 3:
        print("Te has arrepentido de la batalla 🐔, saliendo...");
        break;
      default:
        print("Ingrese una opción correcta");
        break;
    }
  } while (opcion != 3);
}


int validarPosicion(List<dynamic> lista, String texto){
  int numero = int.parse(stdin.readLineSync()!);
  while (numero > lista.length || numero <= 0) {
      print(texto);
      numero = int.parse(stdin.readLineSync()!);
    }
  return numero;
}

void batallaIniciada(int numEntrenador, List<Entrenadores> entrenadores){
  bool muerto = false, continuar = true;
  int opcion, numSenamon1 = 0, numSenamon2 = 0;
  List<Senamones> senamones1 = List.from(entrenadores[0].senamones);
  List<Senamones> senamones2 = List.from(entrenadores[1].senamones);
  List<List<double>> matrizVidas = [];
  List<List<Senamones>> matrizSenamones = [senamones1, senamones2];
  for (var i = 0; i < matrizSenamones.length; i++) {
    List<double> vidas = [];
    for (var j = 0; j < matrizSenamones[i].length; j++) {
      vidas.add(matrizSenamones[i][j].puntosSalud);
    }
    matrizVidas.add(vidas);
  }
  List<int> pocisiones = [numSenamon1, numSenamon2];
  print("¿Quién iniciara? (entrenador 1 o entrenador 2)");
  numEntrenador = validarPosicion(entrenadores, "Ingrese un entrenador válido");
  numEntrenador --;
  int numEntrenadorEnemigo;
  do {
    if(numEntrenador == entrenadores.length - 1){
      numEntrenadorEnemigo = numEntrenador - 1;
    }else{
      numEntrenadorEnemigo = numEntrenador + 1;
    }
    print("ENTRENADOR ${entrenadores[numEntrenador].nombre}");
    if (muerto) {
      print("*"*30);
      print("Tu senamon elegido ha muerto, tienes que cambiarlo");
      opcion = 1;
    }else{
      print("*"*30);
      print("BATALLA");
      print("1. Cambiar Senamon");
      print("2. Atacar");
      print("3. Ver información del senamon enemigo");
      opcion = int.parse(stdin.readLineSync()!);
    }
    switch(opcion){
      case 1:
        print("TU SENAMON ELEGIDO: ${matrizSenamones[numEntrenador][pocisiones[numEntrenador]].nombre}");
        print("Ingresa el senamon que deseas elegir");
        print("TUS SENAMONES EN BATALLA");
        for (var i = 0; i < matrizSenamones[numEntrenador].length; i++) {
          print("${i + 1}. ${matrizSenamones[numEntrenador][i].nombre}");
        }
        pocisiones[numEntrenador] = validarPosicion(matrizSenamones[numEntrenador], "Ingrese un senamon en una poxisión correcta");
        pocisiones[numEntrenador] --;
        pocisiones[numEntrenador] = validarVida(pocisiones[numEntrenador], matrizSenamones[numEntrenador]);
        muerto = false;
        break;

      case 2:
        matrizSenamones[numEntrenadorEnemigo][pocisiones[numEntrenadorEnemigo]].puntosSalud 
        = 
        matrizSenamones[numEntrenador][pocisiones[numEntrenadorEnemigo]].atacar(matrizSenamones[numEntrenadorEnemigo][pocisiones[numEntrenadorEnemigo]]);
        if(matrizSenamones[numEntrenadorEnemigo][pocisiones[numEntrenadorEnemigo]].puntosSalud <= 0){
          print("El senamon de tu enemigo ha muerto");
          muerto = true;
        }
        break;

      case 3:
        matrizSenamones[numEntrenadorEnemigo][pocisiones[numEntrenadorEnemigo]].mostrarInfo();
        break;

      case 4:
        break;

      default:
        break;
    }
    int contador = 0;
    for (var i = 0; i < matrizSenamones[numEntrenadorEnemigo].length; i++) {
      if (matrizSenamones[numEntrenadorEnemigo][i].puntosSalud <= 0) {
        contador++;
      }
    }
    if(contador >= 3){
       continuar = false;
    }else{
      continuar = true;
    }
    if (continuar == false) {
      entrenadores[numEntrenador].registrarVictoria();
      print("Has ganado 200 puntos de experiencia");
      entrenadores[numEntrenador].nivel += 200;
      break;
    }
    numEntrenador = numEntrenadorEnemigo;
      
  } while (continuar);
  for (var i = 0; i < matrizSenamones.length; i++) {
    for (var j = 0; j < matrizSenamones[i].length; j++) {
      matrizSenamones[i][j].puntosSalud = matrizVidas[i][j];
    }
  }
}

void crearSenamones(int numEntrenador, List<Entrenadores> entrenadores){
  int opcion;
  do {
    List<dynamic> infoSenamon = [];
    List<String> tipos = ["Fuego", "agua", "volador", "Hierva", "Eléctrico"];
    print("1. Crear Senamon");
    print("2. Salir");
    opcion = int.parse(stdin.readLineSync()!);
    switch(opcion){
      case 1:
        print("Ingresa el nombre del senamon");
        infoSenamon.add(stdin.readLineSync()!);
        print("Selecciona el tipo de senamon que quieres");
        for (var i = 0; i < tipos.length; i++) {
          print("${i + 1}. ${tipos[i]}");
        }
        int posicionTipo = validarPosicion(tipos, "Ingresa un tipo que esté en la lista");
        infoSenamon.add(tipos[posicionTipo - 1]);
        print("Ingresa el peso del senamon");
        infoSenamon.add(double.parse(stdin.readLineSync()!));
        print("Ingresa la vida que tendrá tu senamon");
        double total = 5200;
        double vida = validarNumero(total, 1);
        total -= vida;
        infoSenamon.add(vida);
        print("Ingresa la cantidad de daño que hará el senamon");
        double ataque = validarNumero(total + 1, 1);
        infoSenamon.add(ataque);
        print("Ingresa la descripción del senamon");
        infoSenamon.add(stdin.readLineSync()!);
        Senamones senamonUsuario = Senamones(infoSenamon[0], 0, infoSenamon[1], infoSenamon[2], infoSenamon[3], infoSenamon[4], 1, 100, infoSenamon[5]);
        entrenadores[numEntrenador].senamonesGlobales.add(senamonUsuario);
        print("Tu senamon quedó de la siguiente manera");
        senamonUsuario.mostrarInfo();
        break;
      
      case 2:
        break;

      default:
        break;
    }
  } while (opcion != 2);
}

int validarVida(int posicion, List<Senamones> senamones){
  do {
    if (senamones[posicion].puntosSalud <= 0) {
      print("Este Senamon está muerto, tienes que elegir otro");
      posicion = validarPosicion(senamones, "Ingrese un senamon de la lista");
      posicion --;
    }
  } while (senamones[posicion].puntosSalud <=0);
  return posicion;
}

double validarNumero(double max, double min){
  double num = double.parse(stdin.readLineSync()!);
  do {
    if (num < min || num > max) {
      print("Ingrese un valor que esté entre $min y $max");
      num = double.parse(stdin.readLineSync()!);
    }
  } while (num < min || num > max);
  return num;
}