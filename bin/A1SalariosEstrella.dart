import 'dart:io';

void main(){

  int sueldo = 120;
  int sueldoextra = 175;
  int sueldototal = 0;
  int reporte = 0;
  
  while(reporte < 2)
  {
    print('');
    print('Por favor ingrese las horas que laboradas esta semana: ');
    int horas = int.parse(stdin.readLineSync()!);
    print('');
    if(horas >= 27 && reporte < 2)
  {
    if(horas >= 41)
    {
      horas = horas -40;
      sueldototal = sueldoextra * horas + 4800;
      print('El sueldo total de esta semana es de $sueldototal pesos' );
      print('');
      horas = horas + 40;
    }
    else
    {
      sueldototal = sueldo * horas;
      print('El sueldo total de esta semana es de $sueldototal pesos');
    }
  }
  else if( horas < 27 && horas >= 1 && reporte < 2)
  {
    if(reporte < 2)
    {
      sueldototal = sueldo * horas;
      print('Esta semana no cumplio con el minimo de horas que son 27. Se le pondra su primera acta administrativa');
      print('El sueldo total de esta semana es de $sueldototal pesos');
      print('');
      reporte = reporte + 1;
    }
    else
    {
      print('Esta es su segunda acta administrativa, pase a capital humano a firma su renuncia!!!');
      reporte = 4;
    }
  }
  else
  {
    print('Cantidad invalida de horas, por favor ingrese un numero mayor a 0');
  }
  }
  print('Esta es su segunda acta administrativa, pase a capital humano a firmar su renuncia!!!');

}