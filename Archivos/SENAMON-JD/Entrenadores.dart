import 'Senamones.dart';

class Entrenadores {
  String nombre;
  String email;
  DateTime fechaNacimiento;
  double nivel;
  int batallasGanada;
  List<Senamones> senamones;
  List<Senamones> senamonesGlobales;
  
  Entrenadores(this.nombre, this.email, this.fechaNacimiento, this.nivel, this.batallasGanada, this.senamones, this.senamonesGlobales);
  
   // Método para mostrar la información del entrenador
  void mostrarInfo() {
    print("Nombre: $nombre, Email: $email, Fecha de Nacimiento: $fechaNacimiento, Nivel: $nivel, Batallas Ganadas: $batallasGanada");
  }

  // Método para subir de nivel
  void subirNivel(double incremento) {
    nivel += incremento;
    print("$nombre ha subido su nivel a $nivel");
  }

  // Método para registrar una victoria
  void registrarVictoria() {
    batallasGanada   += 1;
    print("$nombre ha ganado una batalla. Total de batallas ganadas: $batallasGanada");
  }
}