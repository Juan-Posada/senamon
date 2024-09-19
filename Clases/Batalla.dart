

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

  Batalla(this.entrenador1, this.entrenador2, this.senamon1, this.senamon2, this._ganador, this._fechaBatalla, this._resultado) {
    // Inicializa la batalla con los entrenadores y Senamones dados
  }

  void iniciarBatalla() {
    
  }

  void atacar(Senamon atacante, Senamon defensor) {
    
  }

  void finalizarBatalla() {
    
  }

  String getResultado() {
   return _resultado; 
  }
}