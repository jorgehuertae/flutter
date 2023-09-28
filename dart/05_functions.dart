void main()
{
  print( saludo_1() );
  print( saludo_2() );
  print( sumar_1(13,73) );
  print( sumar_2(7,3) );
  print( sumar_3(11,13) );
  print( sumar_4(5,4) );
  print( sumar_5(5, null) );
  print( sumar_6(6) );
  print( sumar_7(7) );
  print( sumar_7(2,3) );
  print( sumar_8(b:9, a:4) );
  print( sumar_8() );
  print( saludo_3('jorge', 'huerta') );
  print( saludo_4( apellido:'huerta', nombre:'jorge' ));
  print( saludo_5( apellido:'huerta', nombre:'jorge' ));
}

//funcion
String saludo_1() {  
  return 'hola a todos'; 
}

//funcion de flecha
String saludo_2() => 'Hola a todos nuevamente';

//funcion con parametros
int sumar_1(a, b) =>  a + b;

//funcion con parametros
int sumar_2(int a, int b) =>  a + b;

//funcion con parametros
int sumar_3(a, b) 
{
  return a + b;  
}

//funcion con parametros
int sumar_4(int a, int b) 
{
  return a + b;
}

//funcion con parametros opcionales
int sumar_5(int a, int? b) 
{
  b  = b ?? 11;
  return a + b;
}

int sumar_6(int a, [int? b]) 
{
  b  = b ?? 11;
  return a + b;
}

int sumar_7(int a, [int b = 11]) 
{
  return a + b;
}

int sumar_8({ int a = 1, int b = 2 }) 
{
  return a + b;
}

String saludo_3(String nombre, String apellido) 
{  
  return 'hola $nombre $apellido'; 
}

String saludo_4({String? nombre, String? apellido}) 
{  
  return 'hola $nombre $apellido'; 
}

String saludo_5({required String nombre, String? apellido}) 
{  
  return 'hola $nombre $apellido'; 
}
