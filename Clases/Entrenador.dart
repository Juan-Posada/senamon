import 'dart:io';

import 'Senamon.dart';

class Entrenador {
  //atributos
  List<Senamon> listaSenamon = [];
  String _nombre, _email;
  DateTime _fechaNacimiento;
  double _exp;
  int _cantBattWin, _cantBatt;

  //constuctor
  Entrenador(this._nombre, this._email, this._fechaNacimiento, this._exp,
      this._cantBattWin, this._cantBatt);

  //metodos
  void mostrarInfo() {
    print("ingrese el _nombre del entrenador:");
    _nombre = stdin.readLineSync()!;
    print("entrenador: ${this._nombre}");
    print("ingrese el _email del entrenador:");
    _email = stdin.readLineSync()!;
    print("ingrese la fecha de nacimiento del entrenador:");
    _fechaNacimiento = DateTime.parse(stdin.readLineSync()!);
  }

  void sumar_exp() {}
  void restar_exp() {}

  void cantidadBatallas() {
    _cantBattWin++;
    print("Lleva ${_cantBattWin} batallas ganadas");
  }

  void atraparSenamon() {

  }

  void entrenarSenamon() {}
 


  //Get
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

//SET
  void setExp(double newExp) {
    this._exp = newExp;
  }

  void setCantBattWin(int newcantBattWin) {
    this._cantBattWin = newcantBattWin;
  }

  void setCantBatt(int newcantBatt) {
    this._cantBattWin = newcantBatt;
  }

}
