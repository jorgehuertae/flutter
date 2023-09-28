void main() {
  //no se puede instanciar por ser abstracta
  //final windPlant = EnergyPlant();

  final windPlant = WindPlant(initialEnergy: 100);
  /*
  print(windPlant);

  windPlant.consumeEnergy(10);

  print(windPlant.energyLeft);
  */
  
  print('wind : ${chargePhone(windPlant)}');
  print('wind : ${chargePhone(windPlant)}');
  print('wind : ${chargePhone(windPlant)}');
  
  final nuclearPlant = NuclearPlant(energyLeft: 1000);
  print('nuclear : ${chargePhone(nuclearPlant)}');
  print('nuclear : ${chargePhone(nuclearPlant)}');
  print('nuclear : ${chargePhone(nuclearPlant)}');
  
}

enum PlantType { nuclear, wind, water }

//clase abstracta
abstract class EnergyPlant {
  //propiedades
  double energyLeft;

  final PlantType type; //nuclear wind water

  //metodos, sin implementación por ser clase abstracta
  void consumeEnergy(double amount) /*{ throw UnimplementedError(); }*/;

  //constructor
  EnergyPlant({required this.energyLeft, required this.type});
}


//extension de la clase abstracta, implementacion general
class WindPlant extends EnergyPlant {
  
    WindPlant({required double initialEnergy})
        : super(energyLeft: initialEnergy, type: PlantType.wind);

    @override
    void consumeEnergy(double amount) {
      energyLeft -= amount;
    }
}


//implementacion de la clase abstracta, implementacion especifica
class NuclearPlant implements EnergyPlant 
{
    //propiedades
    @override
    double energyLeft;
  
    @override
    final PlantType type = PlantType.nuclear; 
    
    //constructor
    NuclearPlant({required this.energyLeft});
  
    @override
    void consumeEnergy(double amount) {
      energyLeft -= (amount * 0.5);
    }
}


//funcion
double chargePhone(EnergyPlant plant){
  
  if (plant.energyLeft < 10){
    throw Exception ('not enough energy');      
  }
  
  plant.consumeEnergy(10);
  
  return plant.energyLeft;
  
}
