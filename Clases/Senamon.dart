import 'TipoSenamon.dart';

class Senamon extends Tiposenamon {
  String _nombre;
  int _fase;
  int _nivel;
  double _peso;
  double _energia;
  int _puntosSalud;
  int _puntosAtaque;
  String _descripcion;
  final int _puntosSaludMaximos;
  Senamon(
      this._nombre,
      this._fase,
      this._nivel,
      this._peso,
      this._puntosSalud,
      this._puntosAtaque,
      this._descripcion,
      this._energia,
      String _nombreTipo,
      String _descripcionTipo)
      : _puntosSaludMaximos = _puntosSalud,
        super(_nombreTipo, _descripcionTipo);

  // Métodos para aumentar puntos de ataque y salud
  void aumentarAtaque(int puntos) {
    _puntosAtaque += puntos;
    print('''

    $_nombre ha aumentado su ataque a $_puntosAtaque
    
    ''');
  }

  void aumentarSalud(int puntos) {
    _puntosSalud += puntos;
    print('''

    $_nombre ha aumentado su salud a $_puntosSalud
    
    ''');
  }

  void subirNivel(int incremento) {
    _nivel += incremento;
    print('''

    $_nombre ha subido su nivel a $_nivel
    
    ''');
  }

// Método para alimentar al Senamon
  void alimentar() {
    if (_puntosSalud < _puntosSaludMaximos) {
      _puntosSalud += 20;
      if (_puntosSalud > _puntosSaludMaximos) {
        _puntosSalud = _puntosSaludMaximos;
      }
      print('''

          ${getNombre()} ha sido alimentado. Salud actual: $_puntosSalud / $_puntosSaludMaximos
          
      ''');
    } else {
      print('''
      
      ${getNombre()} ya tiene salud máxima.
      
      ''');
    }
  }

  void perderSalud(int puntos) {
    _puntosSalud -= puntos;
    if (_puntosSalud < 0) {
      _puntosSalud = 0;
    }
  }

  // Método para perder salud considerando afinidades
  void perderSaludConAfinidad(int puntos, Tiposenamon tipoAtacante) {
    double danioAjustado = tipoAtacante.calcularDanio(puntos, this);
    _puntosSalud -= danioAjustado.toInt();
    if (_puntosSalud < 0) {
      _puntosSalud = 0;
    }
  }

  // Verifica si el Senamon sigue vivo
  bool estaVivo() {
    return _puntosSalud > 0;
  }

  // Getters
  String getNombre() {
    return _nombre;
  }

  int getFase() {
    return _fase;
  }

  int getNivel() {
    return _nivel;
  }

  double getPeso() {
    return _peso;
  }

  double getEnergia() {
    return _energia;
  }

  int getPuntosSalud() {
    return _puntosSalud;
  }

  int getPuntosAtaque() {
    return _puntosAtaque;
  }

  String getDescripcion() {
    return _descripcion;
  }

  // Setters
  void setNombre(String nombre) {
    this._nombre = nombre;
  }

  void setFase(int fase) {
    this._fase = fase;
  }

  void setNivel(int nivel) {
    this._nivel = nivel;
  }

  void setPeso(double peso) {
    this._peso = peso;
  }

  void setEnergia(double energia) {
    this._energia = energia;
  }

  void setPuntosDeSalud(int puntosDeSalud) {
    this._puntosSalud = puntosDeSalud;
  }

  void setPuntosDeAtaque(int puntosDeAtaque) {
    this._puntosAtaque = puntosDeAtaque;
  }

  void setDescripcion(String descripcion) {
    this._descripcion = descripcion;
  }
}
