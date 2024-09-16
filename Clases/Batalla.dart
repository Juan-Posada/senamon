import 'dart:io';
import 'Entrenador.dart';

class Juego {
  List<Entrenador> listaEntrenadores = [];

  // Método para crear y agregar un entrenador a partir de la entrada del usuario
  void crearEntrenador() {
    if (listaEntrenadores.length < 2) {
      // Pedir datos al usuario
      print("Introduce el nombre del entrenador:");
      String? nombre = stdin.readLineSync();
      
      print("Introduce el email del entrenador:");
      String? email = stdin.readLineSync();
      
      print("Introduce la fecha de nacimiento (YYYY-MM-DD):");
      String? fecha = stdin.readLineSync();
      DateTime fechaNacimiento = DateTime.parse(fecha!);

      // Crear un nuevo entrenador usando los setters
      Entrenador nuevoEntrenador = Entrenador(nombre!, email!, fechaNacimiento, 0, 0, 0);
      listaEntrenadores.add(nuevoEntrenador);

      print("Entrenador ${nuevoEntrenador.getNombre()} creado y agregado a la lista.");
    } else {
      print("Ya tienes el máximo de 2 entrenadores.");
    }
  }

  // Método para mostrar todos los entrenadores
  void mostrarEntrenadores() {
    if (listaEntrenadores.isEmpty) {
      print("No hay entrenadores en la lista.");
    } else {
      for (var entrenador in listaEntrenadores) {
        entrenador.mostrarInfo();
      }
    }
  }
}

void main() {
  Juego juego = Juego();

  // Crear hasta dos entrenadores
  for (int i = 0; i < 2; i++) {
    juego.crearEntrenador();
  }

  // Mostrar entrenadores
  print("\nEntrenadores creados:");
  juego.mostrarEntrenadores();
}
