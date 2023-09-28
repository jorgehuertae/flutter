
void main()
{
  //final numbers = [1,1,2,3,4,5,5,5,6,7,8,8,8,8,9,9];
  //final numbers =<int> [1,1,2,3,4,5,5,5,6,7,8,8,8,8,9,9];
  final List<int> numbers = [1,1,2,3,4,5,5,5,6,7,8,8,8,8,9,9];
  
  print(
  '''
  lista : $numbers
  set de valores(elimina duplicados) : ${numbers.toSet()}
  de set a Lista : ${numbers.toSet().toList()}
  cantidad de valores : ${numbers.length}
  valor en posicion [0] y [8] : ${numbers[0]}, ${numbers[8]}
  primer valor : ${numbers.first}
  ultimo valor : ${numbers.last}
  valores en reverso(de lista a iterables) : ${numbers.reversed}  
  '''  
  );  
    
  final reversedNumbers = numbers.reversed;
  
  print(
  '''
  iterable : $reversedNumbers
  lista : ${reversedNumbers.toList()}
  set de valores : ${reversedNumbers.toSet()}  
  '''  
  ); 
    
  final List<String> dias = ['lunes','lunes', 'martes', 'miercoles', 'jueves', 'jueves', 'jueves'];
  print(
  '''
  iterable : ${dias.reversed.toSet()}
  lista : ${dias.toList()}
  set de valores : ${dias.toSet()}  
  '''  
  ); 
  
  final numbersGreaterthan5 = 
    numbers.where((int num){return num > 5; }) ;
  
  print(
  '''
  numeros > 5 : $numbersGreaterthan5
  set numeros > 5 : ${numbersGreaterthan5.toSet()}
  '''  
  );   
}

