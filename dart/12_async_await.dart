
void main()  async {
  
  print('inicio del programa');

  try{
      final value = await procesarEnLinea('http//google.es/procesar');
      print (value);
  }catch(err){
    print('tenemos un error: $err');
  }
  print('fin del programa');
}

Future<String> procesarEnLinea(String url) async {
  await Future.delayed(const Duration(seconds: 2));
  throw 'Error en la peticion';
  //return 'Tenemos un valor de la peticion';
}