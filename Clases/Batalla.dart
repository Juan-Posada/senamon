import 'Senamon.dart';
import 'Entrenador.dart';

class Batalla {
  Entrenador entrenador1;
  Entrenador entrenador2;
  Senamon senamon1;
  Senamon senamon2;
  Entrenador _ganador;
  DateTime _fechaBatalla;
  String _resultado;

  Batalla(this.entrenador1, this.entrenador2, this.senamon1, this.senamon2,
      this._ganador, this._fechaBatalla, this._resultado) {
    // Inicializa la batalla con los entrenadores y Senamones dados
  }

  String lanzarMoneda() {
    List<String> moneda = ['Cara', 'Sello'];
    moneda.shuffle();
    return moneda[0];
  }

  void iniciarBatalla(Entrenador entrenador1, Entrenador entrenador2) {
    print('''
Cara: Primer entrenador (${entrenador1.getNombre()})
Sello: Segundo entrenador (${entrenador2.getNombre()})
''');
    Entrenador turno = lanzarMoneda() == 'Cara' ? entrenador1 : entrenador2;
    print("Inicia ${turno.getNombre()}");

    while (entrenador1.obtenerSenamonVivo() != null &&
        entrenador2.obtenerSenamonVivo() != null) {
      turno =
          turno == entrenador1 ? entrenador2 : entrenador1; // Cambiar el turno
      realizarTurno(turno, entrenador1, entrenador2);
    }

    Entrenador ganador =
        entrenador1.obtenerSenamonVivo() != null ? entrenador1 : entrenador2;
    print("¡${ganador.getNombre()} ha ganado la batalla!");
  }

  void realizarTurno(
      Entrenador atacante, Entrenador entrenador1, Entrenador entrenador2) {
    Entrenador defensor = atacante == entrenador1 ? entrenador2 : entrenador1;

    Senamon senamonAtacante = atacante.obtenerSenamonVivo();
    Senamon senamonDefensor = defensor.obtenerSenamonVivo();

    if (senamonAtacante != null && senamonDefensor != null) {
      atacar(senamonAtacante, senamonDefensor);
    }
  }

  void atacar(Senamon atacante, Senamon defensor) {
    print("${atacante.getNombre()} ataca a ${defensor.getNombre()}");
    defensor.setPuntosDeSalud(
        defensor.getPuntosSalud() - atacante.getPuntosAtaque());
    print(
        "${defensor.getNombre()} ahora tiene ${defensor.getPuntosSalud()} de vida");

    if (!defensor.estaVivo()) {
      print("${defensor.getNombre()} ha sido derrotado.");
    }
  }

void finalizarBatalla(Entrenador entrenador1, Entrenador entrenador2) {
  if (!entrenador1.tieneSenamonesVivos()) {
    print("${entrenador2.getNombre()} es el ganador!");
    entrenador2.sumarExp(200);
    entrenador2.cantidadBatallas(); // Agregar victoria al historial
  } else if (!entrenador2.tieneSenamonesVivos()) {
    print("${entrenador1.getNombre()} es el ganador!");
    entrenador1.sumarExp(200);
    entrenador1.cantidadBatallas(); // Agregar victoria al historial
  } else {
    print("La batalla aún no ha terminado.");
  }
}

  String getResultado() {
    return _resultado;
  }

  void setResultado(String resultados) {
    this._resultado = resultados;
  }
}
