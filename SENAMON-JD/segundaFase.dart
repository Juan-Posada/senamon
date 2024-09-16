import 'dart:io';
import 'dart:math';
import 'Entrenadores.dart';
import 'Senamones.dart';

void main(List<String> args) {
  int numEntrenadores;
  List<Entrenadores> entrenadores = [];
  print("SEGUNDA FASE");
  print("Ingrese el número de entrenadores que van a crear");
  List<int> numerosEntrenadorestorneo = [2, 4, 8, 16];
  for (var i = 0; i < numerosEntrenadorestorneo.length; i++) {
    print("${i + 1}. ${numerosEntrenadorestorneo[i]}");
  }
  numEntrenadores = numerosEntrenadorestorneo[validarPosicion(numerosEntrenadorestorneo, "Ingrese una cantidad que esté dentro de la lista") - 1];
  for (var i = 0; i < numEntrenadores; i++) {
    String nombre;
    String email;
    DateTime fecha;
    List<Senamones> senamonesGlobales = [
      //Fuego
      Senamones("Drolo", 0, "Fuego", 20, 2000, 400, 1, 100, "Un Senamon que tiene una buena vida y pega bastante bien. No tendrá nada de piedad para los senamones eléctricos. Le gusta comer rocas, no le preguntes por qué"),
      Senamones("Fromo", 0, "Fuego", 5, 500, 1000, 1, 100, "Pequeño pero peligrosom, este senamon a pesar de tener poca vida le dará una paliza a sus adversarios. Es muy tierno, pero no fies de eso"),
      Senamones("Drogo", 0, "Fuego", 100, 5000, 200, 1, 100, "Un grandulón que servirá como bolsa de boxeo y ayudará como defensa, pues a pesar de no dar duros golpes resiste muchos de ellos. Es alguien muy amable, pero solo con sus cercanos"),
      Senamones("Orloc", 0, "Fuego", 50, 1000, 800, 1, 100, "Un ninja que tira estrellas ninjas en llamas"),
      //Agua
      Senamones("Gulu", 0, "Agua", 40, 2000, 400, 1, 100, "Este senamon es ágil para dar buenos golpes, y resistir bastante. Le encantan las flores, en especial las azules"),
      Senamones("Luju", 0, "Agua", 5, 500, 1000, 1, 100, "Este senamon es pequeñamente peligroso, sabe dar buenos golpes. Es muy agresivo con los grandulones"),
      Senamones("Cucu", 0, "Agua", 150, 5000, 400, 1, 100, "Un Senamon bastante pesado que servirá para resistir fuertes ataques, ama ir a la playa"),
      Senamones("Zulu", 0, "Agua", 120, 1000, 800, 1, 100, "Es un caballito de mar bastante grande que sus chapuzones no se sienten frescos"),
      //Hierva
      Senamones("Fever", 0, "Hierva", 1, 2000, 400, 1, 100, "Un Senamon muy balanceado, mantiene en temperaturas calientes"),
      Senamones("Hetler", 0, "Hierva", 0.5, 500, 1000, 1, 100, "Le gusta matar judios, mantiene un poco volado de este mundo"),
      Senamones("Mender", 0, "Hierva", 5, 5000, 400, 1, 100, "Un Senamon robusto, el que más pesa de su especie, aunque todos ellos son muy libianos"),
      Senamones("Ermes", 0, "Hierva", 2, 1000, 800, 1, 100, "Es una planta carnívora que da buenos mordiscos"),
      //Volador
      Senamones("Darla", 0, "Volador", 20, 2000, 400, 1, 100, "Un senamon que sabe lo que es el ataque y la defensa, duerme en las nubes"),
      Senamones("Fala", 0, "Volador", 30, 500, 1000, 1, 100, "Un senamon que ataca fuertemente desde el aire, no se sabe cómo puede volar con tanto peso"),
      Senamones("Barsa", 0, "Volador", 2, 5000, 200, 1, 100, "Un senamon que aguanta bastantes golpes, no se sabe cómo si es tan pequeño"),
      Senamones("Araca", 0, "Volador", 10, 1000, 8000, 1, 100, "Es un indígena bastante agresivo"),
      //Eléctrico
      Senamones("Diritiri", 0, "Electrico", 12, 2000, 400, 1, 100, "Un senamon muy sabio que sabe utilizar las dos habilidades de ataque y defensa"),
      Senamones("Firili", 0, "Electrico", 4, 500, 1000, 1, 100, "Una pequeña chispa de electricidad que carga toda su energía en un enemigo"),
      Senamones("Mirli", 0, "Electrico", 50, 5000, 400, 1, 100, "Un senamon grande, con demasiada energía que logra soportar fuertes golpes, pero le tiene miedo a los senamones de fuego"),
      Senamones("Imirsis", 0, "Electrico", 30, 1000, 800, 1, 100, "Es una ratica que lanza rayos por la cola")
    ];
    List<Senamones> senamones = [];
    print("¿Cuál el nombre del entrenador ${i + 1}?");
    nombre = stdin.readLineSync()!;
    print("Ingrese el email del entrenador $nombre");
    email = stdin.readLineSync()!;
    print("Ingrese la fecha de nacimiento $nombre (año-mes-dia)");
    fecha = DateTime.parse(stdin.readLineSync()!);
    Entrenadores entrenadorUsuario = Entrenadores(nombre, email, fecha, 0, 0, List.from(senamones), List.from(senamonesGlobales));
    print("Elige 5 Senamones con los que quieras luchar, luego los podrás cambiar");
    for (var i = 0; i < 5; i++) {
      for (var j = 0; j < entrenadorUsuario.senamonesGlobales.length; j++) {
        print("${j + 1}. ${entrenadorUsuario.senamonesGlobales[j].nombre}, ${entrenadorUsuario.senamonesGlobales[j].descripcionSenamon}.");
        print("_"*100);
      }
      print("Ingresa el número del senamon #${i + 1}");
      int numero = validarPosicion(entrenadorUsuario.senamonesGlobales, "Ingrese un senamon que esté en la lista");
      entrenadorUsuario.senamones.add(entrenadorUsuario.senamonesGlobales[numero - 1]);
      entrenadorUsuario.senamonesGlobales.removeAt(numero - 1);
    }
    entrenadores.add(entrenadorUsuario);
  }
  print("*"*30);
  print("Entrenadores que quedaron en el torneo");
  for (var i = 0; i < entrenadores.length; i++) {
    print("${i + 1}. ${entrenadores[i].nombre}");
  }
  print("*"*30);
  print("INICIO DEL TORNEO");
  List<List<Entrenadores>> torneoEntrenadores = [];
  List<Entrenadores> entrenadoresBatalla = [];
  for (var i = 0; i < entrenadores.length; i++) {
    if (entrenadoresBatalla.length == 0 || entrenadoresBatalla.length == 1) {
      entrenadoresBatalla.add(entrenadores[i]);
    }else{
      torneoEntrenadores.add(entrenadoresBatalla);
      entrenadoresBatalla = [];
      entrenadoresBatalla.add(entrenadores[i]);
    }
  }
  torneoEntrenadores.add(entrenadoresBatalla);
  print("El torneo quedó distribuido de la siguiente manera");
  print("-"*100);
  for (var i = 0; i < torneoEntrenadores.length; i++) {
    print("batalla #${i + 1}");
    print("${torneoEntrenadores[i][0].nombre} vs ${torneoEntrenadores[i][1].nombre}");
    print("-"*100);
  }
  int contador = 1;
  do {
    List<int> eliminados = []; //lista para guardar todas las pocisiones de los eliminados
    for (var i = 0; i < torneoEntrenadores.length; i++) {
      if (entrenadores.length == 2) {
        print("*"*100);
        print("BATALLA FINAL ${torneoEntrenadores[i][0].nombre} vs ${torneoEntrenadores[i][1].nombre}");
      }else{
        print("*"*100);
        print("BATALLA #${i + 1} ronda $contador: ${torneoEntrenadores[i][0].nombre} vs ${torneoEntrenadores[i][1].nombre}");
      }
      print("La batalla comenzará, recuerden que de manera predeterminada iniciarán con su primer senamon de la lista");
      int posicionTorneo = i;
      int perdedor = batalla(torneoEntrenadores, posicionTorneo);
      int eliminado = (i+1)*2+(perdedor - 2);
      print("El entrenador ${entrenadores[eliminado].nombre} ha sido eliminado del torneo");
      eliminados.add(perdedor);
    }
    //se acudirá a la lista de eliminados para elimninar al perdedor de la lista torneo
    for (var i = 0; i < eliminados.length; i++) {
      torneoEntrenadores[i].removeAt(eliminados[i]);
    }
    //ahora se reasignará la lista de entrenadores que quedan en la lista torneo
    entrenadores = [];
    for (var i = 0; i < torneoEntrenadores.length; i++) {
      entrenadores.add(torneoEntrenadores[i][0]);
    }
    contador++;
    torneoEntrenadores = [];
    entrenadoresBatalla = [];
    for (var i = 0; i < entrenadores.length; i++) {
      if (entrenadoresBatalla.length == 0 || entrenadoresBatalla.length == 1) {
        entrenadoresBatalla.add(entrenadores[i]);
      }else{
        torneoEntrenadores.add(entrenadoresBatalla);
        entrenadoresBatalla = [];
        entrenadoresBatalla.add(entrenadores[i]);
      }
    }
    torneoEntrenadores.add(entrenadoresBatalla);
  } while (entrenadores.length != 1);
  print("*"*100);
  print("FIN DEL TORNEO");
  print("*"*100);
  print("EL GANADOR DEL TORNEO HA SIDO EL ENTRENADOR ${entrenadores[0].nombre}");
}

int validarPosicion(List<dynamic> lista, String texto){
  int numero = int.parse(stdin.readLineSync()!);
  while (numero > lista.length || numero <= 0) {
      print(texto);
      numero = int.parse(stdin.readLineSync()!);
    }
  return numero;
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

int batalla( List<List<Entrenadores>> torneoEntrenadores, int posicionTorneo){
  int opcion;
  int perdedor = 0;
  do {
    print("1. Lanzar moneda");
    print("2. Iniciar batalla");
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
        perdedor = batallaIniciada(torneoEntrenadores, posicionTorneo);
        opcion = 3;
        break;
      
      default:
        print("Ingrese una opción correcta");
        break;
    }
  } while (opcion != 3);
  return perdedor;
}

int batallaIniciada(List<List<Entrenadores>> torneoEntrenadores, int posicionTorneo){
  bool muerto = false, continuar = true;
  int opcion, numSenamon1 = 0, numSenamon2 = 0;
  List<Senamones> senamones1 = List.from(torneoEntrenadores[posicionTorneo][0].senamones);
  List<Senamones> senamones2 = List.from(torneoEntrenadores[posicionTorneo][1].senamones);
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
  int numEntrenador = validarPosicion(torneoEntrenadores[posicionTorneo], "Ingrese un entrenador válido");
  numEntrenador --;
  int numEntrenadorEnemigo;
  do {
    if(numEntrenador == torneoEntrenadores[posicionTorneo].length - 1){
      numEntrenadorEnemigo = numEntrenador - 1;
    }else{
      numEntrenadorEnemigo = numEntrenador + 1;
    }
    print("ENTRENADOR ${torneoEntrenadores[posicionTorneo][numEntrenador].nombre}");
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
        List<String> tipoSenamones = ["Fuego", "Agua", "Hierva", "Volador", "Electrico"];
        List<List<String>> tipoAtaques = [
          ["poco efectivo", "poco efectivo", "efectivo", "normal", "super efectivo"],
          ["super efectivo", "poco efectivo", "poco efectivo", "efectivo", "normal"],
          ["normal", "super efectivo", "poco efectivo", "poco efectivo", "efectivo"],
          ["normal", "efectivo", "super efectivo", "poco efectivo", "poco efectivo"],
          ["poco efectivo", "normal", "efectivo", "super efectivo", "poco efectivo"]
        ];
        int pocisionTipoAtaque = 0, pocisionTipoAtaqueEnemigo = 0;
        double porcentaje = 1;
        for (var i = 0; i < tipoSenamones.length; i++) {
          if (matrizSenamones[numEntrenador][pocisiones[numEntrenador]].tipoSenamon == tipoSenamones[i]) {
            pocisionTipoAtaque = i;            
          }
        }
        for (var i = 0; i < tipoSenamones.length; i++) {
          if (matrizSenamones[numEntrenadorEnemigo][pocisiones[numEntrenadorEnemigo]].tipoSenamon == tipoSenamones[i]) {
            pocisionTipoAtaqueEnemigo = i;
          }
        }
        if(tipoAtaques[pocisionTipoAtaque][pocisionTipoAtaqueEnemigo] == "poco efectivo"){
          porcentaje = 1.1;
        }else if(tipoAtaques[pocisionTipoAtaque][pocisionTipoAtaqueEnemigo] == "efectivo"){
          porcentaje = 1.4;
        }else if(tipoAtaques[pocisionTipoAtaque][pocisionTipoAtaqueEnemigo] == "super efectivo"){
          porcentaje = 2;
        }
        matrizSenamones[numEntrenadorEnemigo][pocisiones[numEntrenadorEnemigo]].puntosSalud 
        = 
        matrizSenamones[numEntrenador][pocisiones[numEntrenadorEnemigo]].atacarSegundaFase(matrizSenamones[numEntrenadorEnemigo][pocisiones[numEntrenadorEnemigo]], porcentaje, numEntrenador, numEntrenadorEnemigo, tipoAtaques);
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
      torneoEntrenadores[posicionTorneo][numEntrenador].registrarVictoria();
      print("Has ganado 200 puntos de experiencia");
      torneoEntrenadores[posicionTorneo][numEntrenador].nivel += 200;
      break;
    }
    numEntrenador = numEntrenadorEnemigo;
      
  } while (continuar);
  for (var i = 0; i < matrizSenamones.length; i++) {
    for (var j = 0; j < matrizSenamones[i].length; j++) {
      matrizSenamones[i][j].puntosSalud = matrizVidas[i][j];
    }
  }
  return numEntrenadorEnemigo;
}