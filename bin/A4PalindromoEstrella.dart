import 'dart:io';

void main() {
  
  String espacios;
  String minusculassignos;

  int contador;
  int iniciar = 1;
  
  while(iniciar == 1)
  {
    print('Presiona 1 para que iniciar el programa y 0 para cerrarlo');
    int finalizar = int.parse(stdin.readLineSync()!);
    print('');
    if(finalizar == 1)
    {
      print('Por favor ingrese una palabra o una oracion: ');
      print('No se aceptan comas, puntos, guiones o números!!!');
      print('');
      String ? original = stdin.readLineSync()!;

      contador = original.split(' ').length;

      print(contador);

      espacios = original
        .trim()
        .replaceAll(" ", "")
        .replaceAll(",","")
        .replaceAll(".","")
        .replaceAll("/","")
        .replaceAll("-","")
        .replaceAll("_","")
        .replaceAll("0","")
        .replaceAll("1","")
        .replaceAll("2","")
        .replaceAll("3","")
        .replaceAll("4","")
        .replaceAll("5","")
        .replaceAll("6","")
        .replaceAll("7","")
        .replaceAll("8","")
        .replaceAll("9","");

      minusculassignos = espacios.toLowerCase();

      String reversa = minusculassignos.split('').reversed.join('');

      //print(minusculassignos);

      if(minusculassignos == reversa)
      {
        print('La palabra ingresada, SI es un Palíndromo y contiene $contador palabras');
        print('');
      }
      else
      {
        print('La palabra ingresada, NO es un Palíndromo y contiene 0 palabras');
        print('');
      }
      }
      else if(finalizar == 0)
      {
        iniciar = 0;
      }
      else
      {
        print('');
        print('Ingresa una opcion valida. El 1 o el 0.');
        print('');
      }
  } 
}