import 'dart:io';
import 'Senamon.dart';

class Entrenador {
  // Atributos
  List<Senamon> listaSenamon = [];
  List<Senamon> universoSemon = [];
  String _nombre, _email;
  DateTime _fechaNacimiento;
  double _exp;
  int _cantBattWin, _cantBatt;

  // Constructor
  Entrenador(this._nombre, this._email, this._fechaNacimiento, this._exp,
      this._cantBattWin, this._cantBatt, this.listaSenamon, this.universoSemon);

  // Métodos
  void agregarSenamon(Senamon senamon) {
    if (listaSenamon.length < 5) {
      listaSenamon.add(senamon);
      print("${senamon.getNombre()} agregado al equipo.");
    } else {
      print("No puedes tener más de 5 Senamones en el equipo.");
    }
  }

  void mostrarSenamones() {
    print("Equipo de $_nombre:");
    for (var senamon in listaSenamon) {
      print(senamon);
    }
  }

  void mostrarUniverso() {
    print("Equipo de $_nombre:");
    for (var senamon in listaSenamon) {
      print(senamon);
    }
  }

  void mostrarInfoEntrenador() {
    print("Nombre del entrenador: $_nombre");
    print("Email del entrenador: $_email");
    print("Fecha de nacimiento del entrenador: $_fechaNacimiento");
    print("Experiencia: $_exp");
    print("Batallas ganadas: $_cantBattWin");
    print("Cantidad total de batallas: $_cantBatt");
  }

  void sumarExp(double cantidad) {
    this._exp += cantidad;
    print("Nueva experiencia: ${this._exp}");
  }

  void restarExp(double cantidad) {
    this._exp = (this._exp - cantidad).clamp(0, double.infinity);
    print("Nueva experiencia: ${this._exp}");
  }

  void cantidadBatallas() {
    _cantBattWin++;
    print("Lleva $_cantBattWin batallas ganadas");
  }

  void entrenarSenamon(int opcion2, List<Entrenador> listaEntrenadores) {
    Entrenador entrenadorSeleccionado = listaEntrenadores[opcion2 - 1];.2
    int opcion, opcionSenamon;
    do {
      print('1. Para entrenar Senamones');
      print('2. Para salir');
      opcion = int.parse(stdin.readLineSync()!);
      switch (opcion) {
        case 1:
          if (_exp >= 200) {
            print('Selecciona el Senamon a entrenar');
            for (var i = 0; i < listaSenamon.length; i++) {
              print('${i + 1}. ${listaSenamon[i]}');
            }
            opcionSenamon = int.parse(stdin.readLineSync()!);
            
          }
          break;
        case 2:
          break;
      }
    } while (opcion != 2);
  }

  // Getters
  String getNombre() {
    return this._nombre;
  }

  String getEmail() {
    return this._email;
  }

  DateTime getFechaNacimiento() {
    return this._fechaNacimiento;
  }

  double getExp() {
    return this._exp;
  }

  int getCantBattWin() {
    return this._cantBattWin;
  }

  int getCantBatt() {
    return this._cantBatt;
  }

  // Setters
  void setExp(double newExp) {
    this._exp = newExp;
  }

  void setCantBattWin(int newCantBattWin) {
    this._cantBattWin = newCantBattWin;
  }

  void setCantBatt(int newCantBatt) {
    this._cantBatt = newCantBatt;
  }
}
