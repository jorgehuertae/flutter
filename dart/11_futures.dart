void main() {
  print('inicio del programa');

  procesarEnLinea('http//google.es/procesar')
     .then((value) {
    print(value);
  }).catchError((err) {
    print('Error: $err');
  });

  print('fin del programa');
}

Future<String> procesarEnLinea(String Url) {
  return Future.delayed(const Duration(seconds: 2), () {
    throw 'Error de la peticion';
    //return 'Respuesta de la peticion';
  });
}