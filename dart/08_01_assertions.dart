void main() {  
  
   //objeto
  final mySquareDos = SquareDos(side: 100);

  //setear valor
  //mySquareDos.side = -5;
  //mySquareDos.side = 3;

  //imprimir resultado
  print('area calculada: ${mySquareDos.calculateArea()}');

  //imprimir propiedad
  print('area propiedad: ${mySquareDos.area}');
  
  
}


class SquareDos {
  //propiedad privada
  double _side;

  //getter
  double get area {
    return _side * _side;
  }

  //setter
  set side(double value) {
    print('setting new value $value');

    if (value < 0) throw 'value must be >=0';
    _side = value;
  }

  //constructor con aserciones
  SquareDos({required double side}) 
    : assert(side >= 0, 'side must be >= 0'),
      assert(side < 100, 'side must be < 100'),
      _side = side;

  //metodo
  double calculateArea() {
    return _side * _side;
  }
}
