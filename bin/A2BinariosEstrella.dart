import 'dart:io';

void main(List<String> arguments){

  int iniciar = 1;
  
  while(iniciar == 1)
  {
    print('Presiona 1 para que iniciar el programa y 0 para cerrarlo');
    print(' ');
    int finalizar = int.parse(stdin.readLineSync()!);
    if(finalizar == 1)
    {
      print('Por favor, ingrese un numero Decimal, para convertirlo en Binario: ');
      print(' ');
      int decimal = int.parse(stdin.readLineSync()!);

      int binario = 0;

      int indice = 1;

      while (decimal > 0) 
      {
      binario = binario + (decimal % 2) * indice;

      decimal = (decimal / 2).floor();

      indice = indice * 10; 
      }
      print(' ');
      print("El valor del numero Decimal es $decimal  y en Binario es $binario");
      print(' ');

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