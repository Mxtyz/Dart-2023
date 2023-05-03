import 'dart:math';

void main() {
  // Genera el tamaño aleatorio del arreglo entre 10 y 30
  final random = Random();
  final size = random.nextInt(21) + 10;

  // Crear el arreglo aleatorio
  final List<int> arreglo = List.generate(size, (index) => random.nextInt(11));

  // Imprime el  arreglo antes de ordenarlo
  print('Arreglo aleatorio: $arreglo');

  // Ordena el arreglo de forma ascendente
  arreglo.sort();

  // Imprime el arreglo ordenado de forma ascendente
  print('Arreglo ordenado de forma ascendente: $arreglo');

  // Ordena el arreglo de forma aleatoria
  for (var i = 0; i < arreglo.length; i++) {
    final j = random.nextInt(arreglo.length);
    final temp = arreglo[i];
    arreglo[i] = arreglo[j];
    arreglo[j] = temp;
  }

  // Imprime el arreglo ordenado de forma aleatoria
  print('Arreglo ordenado de forma aleatoria: $arreglo');
}
