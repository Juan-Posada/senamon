import 'Senamon.dart';

class Entrenador {
  // Atributos
  List<Senamon> listaSenamon = [];
  String _nombre, _email;
  DateTime _fechaNacimiento;
  double _exp;
  int _cantBattWin, _cantBatt;

  // Constructor
  Entrenador(this._nombre, this._email, this._fechaNacimiento, this._exp,
      this._cantBattWin, this._cantBatt);

  // Métodos
  void mostrarInfo() {
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

  void atraparSenamon(Senamon senamon) {
    listaSenamon.add(senamon);
    print("Senamon atrapado: ${senamon.getNombre()}");
  }

  void entrenarSenamon(Senamon senamon, double incremento, int puntosAtaque, int puntosSalud) {
    if (listaSenamon.contains(senamon)) { 
      senamon.subirNivel(incremento.toInt());
      senamon.aumentarAtaque(puntosAtaque);
      senamon.aumentarSalud(puntosSalud);
      print("Entrenamiento exitoso de ${senamon.getNombre()} con nivel incrementado en ${incremento} niveles, ataque incrementado en ${puntosAtaque} puntos y salud incrementada en ${puntosSalud} puntos.");
    } else {
      print("${senamon.getNombre()} no está en tu lista de Senamones.");
    }
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
