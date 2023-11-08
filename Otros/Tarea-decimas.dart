import 'dart:math';

void main() {
  final random = Random();
  final size = random.nextInt(21) + 10;

  final List<int> arreglo = List.generate(size, (index) => random.nextInt(11));

  print('Arreglo aleatorio: $arreglo');

  arreglo.sort();

  print('Arreglo ordenado de forma ascendente: $arreglo');

  for (var i = 0; i < arreglo.length; i++) {
    final j = random.nextInt(arreglo.length);
    final temp = arreglo[i];
    arreglo[i] = arreglo[j];
    arreglo[j] = temp;
  }
  print('Arreglo ordenado de forma aleatoria: $arreglo');
}
