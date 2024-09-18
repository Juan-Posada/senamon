class Tiposenamon {
  //Atributos
  String _descripcionTipo, _nombreTipo;
  
  //Constructor
  Tiposenamon(this._descripcionTipo, this._nombreTipo);

  //Setter
  void setDescripcionTipoSenamon() {

  }

  //Getter
   void getDescripcionTipoSenamon() {
    
  }


  void mostrarTipo (){
    print("""
El tipo del senamon es $_nombreTipo
y su descripción es $_descripcionTipo""");
  }
}