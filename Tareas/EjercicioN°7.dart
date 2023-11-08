import 'dart:io';

void main() {
  List<int> numeros = obtenerNumeros();

  List<int> numerosAscendentes = List.from(numeros)..sort();
  List<int> numerosDescendentes = List.from(numeros)..sort((a, b) => b.compareTo(a));

  print('Lista ordenada ascendentemente: $numerosAscendentes');
  print('Lista ordenada descendentemente: $numerosDescendentes');
}

List<int> obtenerNumeros() {
  int? tamano = obtenerTamano();
  List<int> numeros = [];

  for (int i = 0; i < tamano!; i++) {
    int? numero = obtenerNumero();
    if (numero != null) {
      numeros.add(numero);
    }
  }

  return numeros;
}

int? obtenerTamano() {
  int? tamano;

  do {
    print('Ingrese el tamaño de la lista:');
    tamano = int.tryParse(stdin.readLineSync() ?? '');

    if (tamano == null || tamano <= 0) {
      print('Por favor, ingrese un número entero positivo válido.');
    }
  } while (tamano == null || tamano <= 0);

  return tamano;
}

int? obtenerNumero() {
  int? numero;

  do {
    print('Ingrese un número entero positivo:');
    numero = int.tryParse(stdin.readLineSync() ?? '');

    if (numero == null || numero <= 0) {
      print('Por favor, ingrese un número entero positivo válido.');
    }
  } while (numero == null || numero <= 0);

  return numero;
}
