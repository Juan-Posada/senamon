

import '../pruebasMetodos.dart';
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

   
    String lanzarMoneda() {
    List<String> moneda = ['Cara', 'Sello'];
      moneda.shuffle();
      return moneda[0];
   
  }
    
  


  void iniciarBatalla( Entrenador entrenador1, Entrenador entrenador2) {
    print('''
      Cara: Primer entrenador
      Sello: Segundo entrenador
    ''');
    if (lanzarMoneda() == 'cara') {
          print("inicia primer entrenador");
    }else{
          print("inicia segundo entrenador");
    }
  }

  void atacar(Senamon atacante, Senamon defensor) {
    
  }

  void finalizarBatalla() {
    
  }

  String getResultado() {
   return _resultado; 
  }

  void setResultado( String resultados) {
   this._resultado = resultados;
  }
}