
void main()  async {
  
  print('inicio del programa');

  try{
    
      final value = await procesarEnLinea('http//google.es/procesar');

      print ('exito: $value');

      } on Exception catch(err){

      print('tenemos una excepcion: $err ');

      } catch (err) {

      print('OOPS, algo terrible pasó: $err');

      } finally {

      print('fin de try y catch');

      }
  
  print('fin del programa');
}

Future<String> procesarEnLinea(String url) async {
  
  await Future.delayed(const Duration(seconds: 1));
  
  //return 'Tenemos un valor de la peticion';
  
  //throw 'Error en la peticion';
  
  throw Exception ('no hay parametros en el url'); 
  
  //throw 'Error en la peticion';
  
}