
import 'package:flutter/material.dart'; 

/*Routes */
import 'package:componentes/src/routes/routes.dart';

/*Pages */
//import 'package:componentes/src/pages/home_temp.dart';
import 'package:componentes/src/pages/alert_page.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Componentes',
      //home: HomePageTemp(),
      //home: HomePage(),
      initialRoute: '/',
      routes: getAplicationRoutes(),
      onGenerateRoute: ( setting ) {

        print('Ruta llamada : ${ setting.name }');
        return MaterialPageRoute( builder: ( BuildContext context ) => AlertPage() );

      },
    );
  }
}