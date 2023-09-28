void main() {
  //objeto
  final mySquareUno = SquareUno(side: 10);

  //setear valor
  mySquareUno.side = 5;

  //imprimir resultado
  print('area calculada: ${mySquareUno.calculateArea()}');

  //imprimir propiedad
  print('area propiedad: ${mySquareUno.area}');
  
  
    //objeto
  final mySquareDos = SquareDos(side: 10);

  //setear valor
  //mySquareDos.side = -5;
  mySquareDos.side = 3;

  //imprimir resultado
  print('area calculada: ${mySquareDos.calculateArea()}');

  //imprimir propiedad
  print('area propiedad: ${mySquareDos.area}');
  
  
}

class SquareUno {
  //propiedades
  double side;

  double get area {
    return side * side;
  }

  //constructor
  SquareUno({required this.side});

  //metodo
  double calculateArea() {
    return side * side;
  }
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

  //constructor
  SquareDos({required double side}) 
    : _side = side;

  //metodo
  double calculateArea() {
    return _side * _side;
  }
}
