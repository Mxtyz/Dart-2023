import 'dart:io';

void main() {
  List<int> numeros = []; // Crea una lista vacía para almacenar los números

  int tamano =
      obtenerTamano(); // Llama a la función para obtener el tamaño de la lista

  for (int i = 0; i < tamano; i++) {
    int numero = obtenerNumero(); // Llama a la función para obtener un número

    numeros.add(numero); // Agrega el número a la lista
  }

  numeros.sort(); // Ordena la lista en orden ascendente

  print('Lista ordenada ascendentemente: $numeros');

  numeros
      .sort((a, b) => b.compareTo(a)); // Ordena la lista en orden descendente

  print('Lista ordenada descendentemente: $numeros');
}

int obtenerTamano() {
  int tamano; // Variable para almacenar el tamaño de la lista

  do {
    print(
        'Ingrese el tamaño de la lista:'); // Solicita al usuario que ingrese el tamaño de la lista
    tamano = int.tryParse(stdin.readLineSync() ??
        ''); // Lee la entrada del usuario y la convierte a un entero

    if (tamano == null || tamano <= 0) {
      print(
          'Por favor, ingrese un número entero positivo válido.'); // Muestra un mensaje de error si el tamaño no es válido
    }
  } while (tamano == null ||
      tamano <= 0); // Repite hasta que se ingrese un tamaño válido

  return tamano; // Devuelve el tamaño de la lista
}

int obtenerNumero() {
  int numero; // Variable para almacenar el número ingresado por el usuario

  do {
    print(
        'Ingrese un número entero positivo:'); // Solicita al usuario que ingrese un número
    numero = int.tryParse(stdin.readLineSync() ??
        ''); // Lee la entrada del usuario y la convierte a un entero

    if (numero == null || numero <= 0) {
      print(
          'Por favor, ingrese un número entero positivo válido.'); // Muestra un mensaje de error si el número no es válido
    }
  } while (numero == null ||
      numero <= 0); // Repite hasta que se ingrese un número válido

  return numero; // Devuelve el número ingresado por el usuario
}
