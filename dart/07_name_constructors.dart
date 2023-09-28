void main()
{ 
  /*
  final ironman = Hero(
                    isAlive:false,
                    power:'money',
                    name:'tony stark'
                  );
  

  */
  
  final Map<String, dynamic> rawJson = {
    'name':'tonyStark',
    'power':'Money',
    'isAlive':true,    
  };
  
  /*
  final ironman = Hero(
                    isAlive:rawJson[isAlive],    
                    power:'money',
                    name:'tony stark'
                  );
  */
  
  final ironman = Hero.fromJson(rawJson);
  
    print (ironman);
  
}

class Hero
{
  String name;
  String power;
  bool isAlive;
  
  Hero({
    required this.name,
    required this.power,
    required this.isAlive
  });
  
  Hero.fromJson(Map<String, dynamic> json)
    : name = json['name']?? 'no name found',
      power = json['power']?? 'no power found',
      isAlive = json['isAlive']?? 'no isAlive found';
  
  
  
  @override
  String toString()
  {
    return '$name, $power, isAlive: ${isAlive?'Yes!':'Nope'}';
  }
  
}