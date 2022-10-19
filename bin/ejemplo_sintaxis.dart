import 'package:ejemplo_sintaxis/ejemplo_sintaxis.dart' as ejemplo_sintaxis;

void main(List<String> arguments) {

  // Comentario en linea

  // Tipo de datos

  int? numero = 2;


  int numero2 = numero!;
  //print("Es numero es: $numero");

  // Listas -> List

  List numeros = [];
  numeros.add(1);
  numeros.add(2000);
  numeros.add('value');

  int tamano = numeros.length;

  numeros[0];

  final listaGenerada = List.generate(100, (int index) => index);
  // print("El numero es: $listaGenerada");

  // MAPS -> Diccionarios (C#) TablasHash Java

  Map persona = new Map();
  persona['nombre'] = 'Pepito';
  persona['edad'] = 40;
  persona['soltero'] = true;

  Map persona2 = {
    'nombre' : 'Juanito',
    'edad' : 30,
    'soltero' : false
  };

  Map<String, dynamic> persona3 = new Map();
  persona3.addAll({'nombre': 'Antonio'});
  persona3.addAll({'nombre': 'Juan'});

  // print(persona3);


  mostrar_nombre_pantalla(apellidos: 'sanz', nombre: 'eduard', edad: 30);
  mostrar_nombre_pantalla(nombre: 'eduard', edad: 10);

  Animal animal = new Animal("nombre",  "especie");

  animal.especie;
  animal.nombre;

  Map<String, String> animalJSON = {
    "nombre": "Pepito",
    "especie": "pescadito"
  };

  Animal animal2 = new Animal.fromJSon(animalJSON);
}


// Método o función
/**
 * tipo_retorno nombre_funcion (argumentos)
 */

bool esPar(int numero){
  return numero % 2 == 0;
}

bool esImpar(int numero) => numero % 2 != 0;

// PARAMETROS NOMBRADOS
// usan el nombre de la variable para especificar a que argumento va el dato { tipo variable }

mostrar_nombre_pantalla( {String? nombre, String apellidos = 'sanz',  required int edad} ){
  print("El nombre: $nombre Apellidos: $apellidos");
}


// Clases ->
class Animal {
  late String _nombre;
  late String _especie;

  Animal(this._nombre, this._especie);

  Animal.fromJSon(Map<String, String> animalJSON){
    this.nombre = animalJSON['nombre'] ?? 'Sin nombre';
    this.especie = animalJSON['especie'] ?? 'Sin especie';
  }

  String get especie => _especie;

  set especie(String value) {
    _especie = value;
  }

  String get nombre => _nombre;

  set nombre(String value) {
    _nombre = value;
  }

  @override
  String toString() {
    return 'Animal{_nombre: $_nombre, _especie: $_especie}';
  }
}