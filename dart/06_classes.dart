void main()
{
  final HeroUno wolverine = HeroUno('logan', 'regeneration');
  print (wolverine); 
  print (wolverine.name); 
  
  final ciclope = HeroUno('scot', 'disparar laser');
  print (ciclope);  
  print (ciclope.name); 

  final tormenta = HeroDos(name:'Tormenta', power:'lanzar rayos');
  print (tormenta);  
  print (tormenta.name);
  
  final humano = HeroDos(name:'NN');
  print (humano);  
  print (humano.name);
  
}

class HeroUno
{   
  String name;
  String power;
  
  //ejemplo de inicializacion controlada
  //Hero(String pName, String pPower) : name=pName, power=pPower;    
  
  //ejemplo de inicializacion posicional
  HeroUno(this.name, this.power);    
}

class HeroDos
{   
  String name;
  String power;

  //ejemplo de inicializacion con argumentos por nombre
  /*
  HeroDos({
          required this.name, 
          required this.power
        });    
  */
   
  HeroDos({
          required this.name, 
          this.power = 'sin poder'
        });  
  
  @override
  String toString()
  {
    return 'Heroe: $name - $power';
  }
}

