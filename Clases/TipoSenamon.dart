class Tiposenamon {
  // Atributos
  String _descripcionTipo, _nombreTipo;

  // Constructor
  Tiposenamon(this._descripcionTipo, this._nombreTipo);

  // Método para obtener el daño ajustado según el tipo
  double calcularDanio(int puntosAtaque, Tiposenamon tipoDefensor) {
    if (tipoDefensor.getNombreTipo() == 'fuego' && _nombreTipo == 'planta') {
      return puntosAtaque * 1.5; // Fuego > Planta
    } else if (tipoDefensor.getNombreTipo() == 'agua' && _nombreTipo == 'fuego') {
      return puntosAtaque * 1.5; // Agua > Fuego
    } else if (tipoDefensor.getNombreTipo() == 'planta' && _nombreTipo == 'agua') {
      return puntosAtaque * 1.5; // Planta > Agua
    } else if (tipoDefensor.getNombreTipo() == 'planta' && _nombreTipo == 'fuego') {
      return puntosAtaque * 0.5; // Fuego < Planta
    } else if (tipoDefensor.getNombreTipo() == 'fuego' && _nombreTipo == 'agua') {
      return puntosAtaque * 0.5; // Agua < Fuego
    } else if (tipoDefensor.getNombreTipo() == 'agua' && _nombreTipo == 'planta') {
      return puntosAtaque * 0.5; // Planta < Agua
    }
    return puntosAtaque.toDouble(); // Sin bonificaciones
  }

  // Getters
  String getNombreTipo() {
    return _nombreTipo;
  }

  void mostrarTipo() {
    print("""
El tipo del senamon es $_nombreTipo
y su descripción es $_descripcionTipo""");
  }
}
