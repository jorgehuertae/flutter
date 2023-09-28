void main()
{
  //var myName='jorge'; 
  //String myName='jorge'; 
  //final myName='jorge';
  late final myName; 
  myName='mundo'; 
  const myConst = "IGV";

  print('hola ${myName.toUpperCase()} $myConst' );
  print('hola ${1+1}' );
}


/*
void main()
{
  var myName = 'Jorge';
  
  print(myName);
  print('nombre es $myName');
  print('tamaño es ${myName.length}');
  print('suma de 5 + 45 es  ${5+ 45}');
  
  const myMonth = 'Septiembre';
  print('mi mes es $myMonth');
  print('tamaño es ${myMonth.length}');
  
  late final String myStation;
  myStation = 'Primavera';
  print('mi estacion es $myStation');
  print('tamaño es ${myStation.length}');
  print(' ${myStation.toUpperCase() }');
}
*/