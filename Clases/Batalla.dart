import 'Senamon.dart';
import 'Entrenador.dart';

class Batalla {
  Entrenador entrenador1;
  Entrenador entrenador2;
  Senamon senamon1;
  Senamon senamon2;
  Entrenador? _ganador;
  DateTime _fechaBatalla;
  String _resultado;

  Batalla(this.entrenador1, this.entrenador2, this.senamon1, this.senamon2,
      this._ganador, this._fechaBatalla, this._resultado);

  String lanzarMoneda() {
    List<String> moneda = ['Cara', 'Sello'];
    moneda.shuffle();
    return moneda[0];
  }

  void iniciarBatalla(Entrenador entrenador1, Entrenador entrenador2, bool conAfinidad) {
    print('''  
      Cara: Primer entrenador (${entrenador1.getNombre()})
      Sello: Segundo entrenador (${entrenador2.getNombre()})
    ''');

    Entrenador turno = lanzarMoneda() == 'Cara' ? entrenador1 : entrenador2;
    print('''  
    Inicia ${turno.getNombre()}
    ''');

    while (entrenador1.obtenerSenamonVivo() != null &&
        entrenador2.obtenerSenamonVivo() != null) {
      turno = turno == entrenador1 ? entrenador2 : entrenador1; // Cambiar el turno
      realizarTurno(turno, entrenador1, entrenador2, conAfinidad);
    }

    Entrenador ganador = entrenador1.obtenerSenamonVivo() != null ? entrenador1 : entrenador2;
    print('''  
    🎇   🎇   🎇   🎇   🎇   🎇   🎇   🎇   🎇   🎇
    ¡${ganador.getNombre()} ha ganado la batalla!
    🎇   🎇   🎇   🎇   🎇   🎇   🎇   🎇   🎇   🎇
    ''');
  }

  void iniciarTorneo(List<Entrenador> entrenadores) {
    print('¡El torneo ha comenzado!');
    
    for (int i = 0; i < entrenadores.length; i += 2) {
      if (i + 1 < entrenadores.length) {
        print('Batalla entre ${entrenadores[i].getNombre()} y ${entrenadores[i + 1].getNombre()}');
        iniciarBatalla(entrenadores[i], entrenadores[i + 1], true); // Llamar con afinidad
      }
    }

    // Aquí puedes determinar el campeón del torneo
  }

  void realizarTurno(Entrenador atacante, Entrenador entrenador1, Entrenador entrenador2, bool conAfinidad) {
    Entrenador defensor = atacante == entrenador1 ? entrenador2 : entrenador1;

    Senamon senamonAtacante = atacante.obtenerSenamonVivo();
    Senamon senamonDefensor = defensor.obtenerSenamonVivo();

    if (senamonAtacante != null && senamonDefensor != null) {
      if (conAfinidad) {
        atacar(senamonAtacante, senamonDefensor, true);
      } else {
        atacar(senamonAtacante, senamonDefensor, false);
      }
    }
  }

  void atacar(Senamon atacante, Senamon defensor, bool conAfinidad) {
    if (atacante.estaVivo() && defensor.estaVivo()) {
      double modificador = conAfinidad ? obtenerModificadorDeAfinidad(atacante, defensor) : 1.0;
      int danioFinal = (atacante.getPuntosAtaque() * modificador).toInt();
      defensor.perderSalud(danioFinal);

      print('''  
          ${atacante.getNombre()} ataca a ${defensor.getNombre()}. 
          🩸   🩸   🩸   🩸   🩸   🩸   🩸   🩸 🩸   🩸   🩸   🩸   🩸   🩸   🩸   🩸
          Salud de ${defensor.getNombre()}: ${defensor.getPuntosSalud()}
      ''');
    }
  }

  double obtenerModificadorDeAfinidad(Senamon atacante, Senamon defensor) {
    if (atacante.getNombreTipo() == 'fuego' && defensor.getNombreTipo() == 'tierra') {
      return 1.5; // Fuego vence a tierra
    } else if (atacante.getNombreTipo() == 'agua' && defensor.getNombreTipo() == 'fuego') {
      return 1.5; // Agua vence a fuego
    } else if (atacante.getNombreTipo() == 'tierra' && defensor.getNombreTipo() == 'agua') {
      return 1.5; // Tierra vence a agua
    } else {
      return 1.0; // Sin ventaja
    }
  }

  String getResultado() {
    return _resultado;
  }

  void setResultado(String resultados) {
    this._resultado = resultados;
  }
}
