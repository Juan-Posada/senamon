import 'dart:io';

class Entrenador {
    //atributos
    String nombre, email;
    DateTime fechaNacimiento;
    double expi;
    int cantBattWin;


    //constuctor
    Entrenador(this.nombre,this.email,this.fechaNacimiento,this.expi,this.cantBattWin);


    //metodos
    void mostrarInfo(){
        print("ingrese el nombre del entrenador:");
        nombre=stdin.readLineSync()!;
        print("entrenador: ${this.nombre}");
        print("ingrese el email del entrenador:");
        email=stdin.readLineSync()!;
        print("ingrese la fecha de nacimiento del entrenador:");
        fechaNacimiento=DateTime.parse(stdin.readLineSync()!);
    }

    void sumarExp(){

    }
    void restarExp(){

    }

    void cantidadBatallas(){
        cantBattWin++;
        print("lleva ${cantBattWin} batallas ganadas");
    }


    	
}
