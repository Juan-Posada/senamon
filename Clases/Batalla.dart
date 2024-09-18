import 'dart:math';

import 'Senamon.dart';
import 'Entrenador.dart';

class Batalla {
  List<Senamon> senamonesBatalla = [];

  List<Entrenador> entrenadoresEnBatalla = [];
  List<String> moneda = ['Cara', 'Sello'];
  
  

  
  void lanzarMoneda() {
   for (var i = 0; i < 1; i++) {
       moneda.shuffle();
       print(moneda[i]);
    }


  } 

  // Función para evaluar si el Senamon tiene vida
  bool senamonTieneVida(Senamon senamon) {
    return senamon.vida > 0;
  }



}  