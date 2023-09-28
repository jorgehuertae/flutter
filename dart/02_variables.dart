
void main()
{
  final String actor = 'Leonardo';
  final int life = 100;
  final bool isAlive=true;
  //lista
  final abilities = ['supervelocidad', 'invisibilidad'];
  final abilitiesOther = <String>['Vision RayosX', 'Volar'];
  final List<String> abilitiesOther2 = <String>['Vision RayosX', 'Volar', 'saltar'];
  
  
  
print('''
  actor: $actor
  tamaño: ${actor.length}
  Vida: $life
  EstaVivo: $isAlive
  habiidades ; $abilities
  Otras habiidades ; $abilitiesOther
  Otras habiidades 2 ; $abilitiesOther2
  tamaño Otras habiidades 2 ; ${abilitiesOther2.length}  
''');
  
  
dynamic ejemplo;
  
  //string
  ejemplo = 'Hola mundo';
  print('String: $ejemplo');
  
  //int
  ejemplo = 999.99;
  print('decimal: $ejemplo');
  
  //bool
  ejemplo = true;
  print('bool: $ejemplo');
  
  //lista
  ejemplo = ['lunes','martes','miercoles']; 
  print('lista: $ejemplo');
  
  //set de datos
  ejemplo = {1, 2, 3, 4}; 
  print('set de datos: $ejemplo');
  
  //iteracciones
  ejemplo = (6, 7, 8, 9); 
  print('iterable: $ejemplo');
  
}
