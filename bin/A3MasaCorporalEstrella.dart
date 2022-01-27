import 'dart:io';

void main(){

  int iniciar = 1;
  
  while(iniciar == 1)
  {
    print('Presiona 1 para que iniciar el programa y 0 para cerrarlo');
    print(' ');
    int finalizar = int.parse(stdin.readLineSync()!);
    if(finalizar == 1)
    {
      print('Por favor ingrese su altura en centimetros: ');
      double alturabrutacm = double.parse(stdin.readLineSync()!);
      print('');

      print('Por favor ingrese su peso en kilogramos: ');
      double pesokg = double.parse(stdin.readLineSync()!);
      print('');
      
      double alturaconvert = alturabrutacm / 100;
      double imclisto = pesokg / (alturaconvert * alturaconvert);
      print("");

    if (imclisto < 18.5) 
    {
      print("El resultado de tu IMC es $imclisto, por lo tanto tienes un peso mas bajo a lo normal!!!");
      print('');
    } 
    else if (imclisto < 25) 
    {
      print("El resultado de tu IMC es $imclisto, por lo tanto tienes un peso normal");
      print('');
    } 
    else if (imclisto < 30) 
    {
      print("El resultado de tu IMC es $imclisto, por lo tanto tienes un peso mas alto de lo normal!!!");
      print('');
    } 
    else 
    {
      print("El resultado de tu IMC es $imclisto, por lo tanto tienes obesidad!!!");
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



  