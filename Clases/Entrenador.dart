import 'dart:io';
import 'Senamon.dart';

class Entrenador {
  // Atributos
  List<Senamon> listaSenamon = [];
  String _nombre, _email;
  DateTime _fechaNacimiento;
  double _exp;
  int _cantBattWin, _cantBatt;

  // Constructor
  Entrenador(this._nombre, this._email, this._fechaNacimiento, this._exp,
      this._cantBattWin, this._cantBatt, this.listaSenamon);

  // Métodos
  void agregarSenamon(Senamon senamon) {
    if (listaSenamon.length < 5) {
      listaSenamon.add(senamon);
      print('''

      ${senamon.getNombre()} agregado al equipo.
      
      ''');
    } else {
      print('''
      
      No puedes tener más de 5 Senamones en el equipo.
      
      ''');
    }
  }

  void mostrarSenamones() {
    print('''

            Equipo de $_nombre:
            
          ''');
    for (var senamon in listaSenamon) {
      print(senamon);
    }
  }


  void mostrarInfoEntrenador() {
    print('''

      Nombre del entrenador:  $_nombre
      Email del entrenador:  $_email
      Fecha de nacimiento:  $_fechaNacimiento
      Experiencia:  $_exp años
      Victorias en batalla:  $_cantBattWin
      Batallas totales:  $_cantBatt


    ''');
  }

  void sumarExp(double cantidad) {
    this._exp += cantidad;
    print('''
      
      Nueva experiencia: ${this._exp}
      
      ''');
  }

  void restarExp(double cantidad) {
    this._exp = (this._exp - cantidad).clamp(0, double.infinity);
    print('''
    
      Nueva experiencia: ${this._exp}
      
      ''');
  }

  void cantidadBatallas() {
    _cantBattWin++;
    print('''

      Lleva $_cantBattWin batallas ganadas
    
    ''');
  }

 void entrenarSenamon(int opcion2, List<Entrenador> listaEntrenadores) {
    Entrenador entrenadorSeleccionado = listaEntrenadores[opcion2 - 1];
    int opcion, opcionSenamon, opcionEntrenar;
    do {
      print('''

        1. Entrenar senamones
        2. Salir del menú

      ''');
      opcion = int.parse(stdin.readLineSync()!);
      switch (opcion) {
        case 1:
          if (_exp >= 200) {
            do {
            print('''

            Selecciona el Senamon a entrenar
            
            ''');
            for (var i = 0; i < listaSenamon.length; i++) {
              print('${i}. ${listaSenamon[i]}');
            }
            opcionSenamon = int.parse(stdin.readLineSync()!);
            
            switch (opcionSenamon) {
              case 0:
                print('''
                
                  ¿Que apartado deseas entrenar? Selecciona la opcion correspondiente

                    1. Ataque
                    2. Salud

                ''');
                opcionEntrenar = int.parse(stdin.readLineSync()!);
                
                if (opcionEntrenar == 1) {
                  listaSenamon[0].aumentarAtaque(20);
                  print('''

                  Ataque aumentado con éxito
                  
                  ${listaSenamon[0]}
                  El nuevo ataque es: ${listaSenamon[0].getPuntosAtaque()}

                  ''');
                }
                else if (opcionEntrenar == 2) {
                  listaSenamon[0].aumentarSalud(20);
                  print('''

                  Salud aumentada con éxito

                  ${listaSenamon[0]}
                  El nuevo ataque es: ${listaSenamon[0].getPuntosSalud()}
                  ''');
                }
                else {
                  print('''

                  ❌❌❌❌❌❌ OPCION INCORRECTA ❌❌❌❌❌❌

                  ''');
                }
                break;


              case 1:
                print('''
                
                  ¿Que apartado deseas entrenar? Selecciona la opcion correspondiente

                    1. Ataque
                    2. Salud

                ''');
                opcionEntrenar = int.parse(stdin.readLineSync()!);
                
                if (opcionEntrenar == 1) {
                  listaSenamon[1].aumentarAtaque(20);
                  print('''

                  Ataque aumentado con éxito
                  
                  ${listaSenamon[1]}
                  El nuevo ataque es: ${listaSenamon[1].getPuntosAtaque()}

                  ''');
                }
                else if (opcionEntrenar == 2) {
                  listaSenamon[1].aumentarSalud(20);
                  print('''

                  Salud aumentada con éxito

                  ${listaSenamon[1]}
                  El nuevo ataque es: ${listaSenamon[1].getPuntosSalud()}
                  ''');
                }
                else {
                  print('''

                  ❌❌❌❌❌❌ OPCION INCORRECTA ❌❌❌❌❌❌

                  ''');
                }
                break;
              

              case 2:
                print('''
                
                  ¿Que apartado deseas entrenar? Selecciona la opcion correspondiente

                    1. Ataque
                    2. Salud

                ''');
                opcionEntrenar = int.parse(stdin.readLineSync()!);
                
                if (opcionEntrenar == 1) {
                  listaSenamon[2].aumentarAtaque(20);
                  print('''

                  Ataque aumentado con éxito
                  
                  ${listaSenamon[2]}
                  El nuevo ataque es: ${listaSenamon[2].getPuntosAtaque()}

                  ''');
                }
                else if (opcionEntrenar == 2) {
                  listaSenamon[2].aumentarSalud(20);
                  print('''

                  Salud aumentada con éxito

                  ${listaSenamon[2]}
                  El nuevo ataque es: ${listaSenamon[2].getPuntosSalud()}
                  ''');
                }
                else {
                  print('''

                  ❌❌❌❌❌❌ OPCION INCORRECTA ❌❌❌❌❌❌

                  ''');
                }
                break;
              

              case 3:
                print('''
                
                  ¿Que apartado deseas entrenar? Selecciona la opcion correspondiente

                    1. Ataque
                    2. Salud

                ''');
                opcionEntrenar = int.parse(stdin.readLineSync()!);
                
                if (opcionEntrenar == 1) {
                  listaSenamon[3].aumentarAtaque(20);
                  print('''

                  Ataque aumentado con éxito
                  
                  ${listaSenamon[3]}
                  El nuevo ataque es: ${listaSenamon[3].getPuntosAtaque()}

                  ''');
                }
                else if (opcionEntrenar == 2) {
                  listaSenamon[3].aumentarSalud(20);
                  print('''

                  Salud aumentada con éxito

                  ${listaSenamon[3]}
                  El nuevo ataque es: ${listaSenamon[3].getPuntosSalud()}
                  ''');
                }
                else {
                  print('''

                  ❌❌❌❌❌❌ OPCION INCORRECTA ❌❌❌❌❌❌

                  ''');
                }
                break;
              

              case 4:
                print('''
                
                  ¿Que apartado deseas entrenar? Selecciona la opcion correspondiente

                    1. Ataque
                    2. Salud

                ''');
                opcionEntrenar = int.parse(stdin.readLineSync()!);
                
                if (opcionEntrenar == 1) {
                  listaSenamon[4].aumentarAtaque(20);
                  print('''

                  Ataque aumentado con éxito
                  
                  ${listaSenamon[4]}
                  El nuevo ataque es: ${listaSenamon[4].getPuntosAtaque()}

                  ''');
                }
                else if (opcionEntrenar == 2) {
                  listaSenamon[4].aumentarSalud(20);
                  print('''

                  Salud aumentada con éxito

                  ${listaSenamon[4]}
                  El nuevo ataque es: ${listaSenamon[4].getPuntosSalud()}
                  ''');
                }
                else {
                  print('''

                  ❌❌❌❌❌❌ OPCION INCORRECTA ❌❌❌❌❌❌

                  ''');
                }
                break;
              
              
              default:
                print('''

                  ❌❌❌❌❌❌ OPCION EN DESARROLLO ❌❌❌❌❌❌

                  ''');
                break;
            }
            } while (opcionSenamon <= listaSenamon.length);

          }
          break;
        case 2:
          break;
      }
    } while (opcion != 2);
  }

 void alimentarSenamon(int seleccionSenamon) {
    if (seleccionSenamon < 1 || seleccionSenamon > listaSenamon.length) {
      print('''

      Selección inválida
      
      ''');

      return;
    }
    // Elegir el Senamon seleccionado
    Senamon senamonSeleccionado = listaSenamon[seleccionSenamon - 1];

    // Alimentar al Senamon
    senamonSeleccionado.alimentar();
  }

  // Método para verificar si todos sus Senamones están vivos
  bool tieneSenamonesVivos() {
    return listaSenamon.any((senamon) => senamon.estaVivo());
  }
  // Método que retorna el primer Senamon vivo de la lista
  Senamon obtenerSenamonVivo() {
    for (var senamon in listaSenamon) {
      if (senamon.estaVivo()) {
        return senamon;
      }
    }
    throw Exception('''

                        No hay Senamones vivos.
                    
                    ''');
  }

  // Getters
  String getNombre() {
    return this._nombre;
  }

  String getEmail() {
    return this._email;
  }

  DateTime getFechaNacimiento() {
    return this._fechaNacimiento;
  }

  double getExp() {
    return this._exp;
  }

  int getCantBattWin() {
    return this._cantBattWin;
  }

  int getCantBatt() {
    return this._cantBatt;
  }

  // Setters
  void setExp(double newExp) {
    this._exp = newExp;
  }

  void setCantBattWin(int newCantBattWin) {
    this._cantBattWin = newCantBattWin;
  }

  void setCantBatt(int newCantBatt) {
    this._cantBatt = newCantBatt;
  }
}
