class Senamones {
  String nombre;
  int nivel; 
  String tipoSenamon;
  double peso;
  double puntosSalud;
  double nivelAtaque;
  int fase;
  double nivelEnergia;
  String descripcionSenamon;

  Senamones(this.nombre, this.nivel, this.tipoSenamon, this.peso, this.puntosSalud, this.nivelAtaque, this.fase, this.nivelEnergia, this.descripcionSenamon,);

  // Método para mostrar la información del Senamon
  void mostrarInfo() {
    print("Nombre: $nombre, Nivel: $nivel, Tipo: $tipoSenamon, Peso: $peso kg, Salud: $puntosSalud, Ataque: $nivelAtaque, Fase: $fase, Energía: $nivelEnergia");
    print("Descripción: $descripcionSenamon");
  }

  // Método para atacar
  double atacar(Senamones enemigo) {
    enemigo.puntosSalud -= this.nivelAtaque;
    print("La vida del senamon enemigo ${enemigo.nombre} ha quedado en: ${enemigo.puntosSalud}");
    return enemigo.puntosSalud;
  }

  double atacarSegundaFase(Senamones enemigo,double porcentaje, int num1, num2, List<List<String>> listaTipos) {
    enemigo.puntosSalud -= this.nivelAtaque*porcentaje;
    print("La vida del senamon enemigo ${enemigo.nombre} ha quedado en: ${enemigo.puntosSalud}, ha sido un ataque ${listaTipos[num1][num2]}");
    print("Ataque de ${this.tipoSenamon} a ${enemigo.tipoSenamon}");
    return enemigo.puntosSalud;
  }

  // Método para subir de nivel
  void subirNivel() {
    nivel++;
    this.nivelAtaque += 20;
    this.puntosSalud += 20;
    print("La salud del senamon ${this.nombre} quedó de ${this.puntosSalud} y su ataque quedó de ${nivelAtaque}");
  }

}