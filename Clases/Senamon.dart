class Senamon {
  String _nombre;
  int _fase ;
  int _nivel;
  double _peso;
  double _energia;
  int _puntosSalud;
  int _puntosAtaque;
  String _descripcion;

  Senamon(this._nombre, this._fase, this._nivel, this._peso, this._puntosSalud, this._puntosAtaque, this._descripcion, this._energia);

  void aumentarAtaque(int puntos) {
    
  }

  void aumentarSalud(int puntos) {

  }

  //get

  String getNombre(){
    return this._nombre;
  }
   int getfase(){
    return this._fase;
  }
   int getNivel(){
    return this._nivel;
  }
   double getPeso(){
    return this._peso;
  }
   double getEnergia(){
    return this._energia;
  }
   int getPuntosSalud(){
    return this._puntosSalud;
  }
   int getPuntosAtaque(){
    return this._puntosAtaque;
  }
   String getDescripcion(){
    return this._descripcion;
  }
}