
void main()
{
  
  final miAuto =
  {
    'tipo':'automovil',
    'marca':'volvo',
    'modelo':'sedan'    
  };    
  print(miAuto);
  
  
  final Map<String, dynamic> miEstacion =
  {
    'nro':1,
    'nombre':'primavera',
    'caracteristica':'flores'    
  };    
  print(miEstacion);
  
  
  final Map<String, dynamic> miMusica =
  {
    'Titulo':'Hijo de la luna',
    'Grupo':'Mekano',
    'Cantantes':
      {
        1:'Ana Torroja', 
        2:'hermanos Nacho',
        3:'José María Cano'
      }   
  };    
  print(miMusica);
  print('cantantes: ${miMusica['Cantantes']}');
  print('cantante principal: ${miMusica['Cantantes'][1]}');
    
}
