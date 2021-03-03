

import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
        backgroundColor: Colors.orange,        
      ),
      body: Center(
        child: TextButton(
          child: Text('Mostrar Alerta'),    
          onPressed: () => _mostrarAlerta( context ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        child: Icon( Icons.keyboard_arrow_left ),
        onPressed: (){ 
          Navigator.pop( context );
        },
      ),
    );

  }

  void _mostrarAlerta( BuildContext context ){
    showDialog(
      context: context, 
      barrierDismissible: false,
      builder: (context){

        return AlertDialog(
          title: Text('Titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Contenido'),
              FlutterLogo( size: 100.0 )
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(), 
              child: Text('Cancelar')
            ),
            TextButton(
              onPressed: (){
                Navigator.of(context).pop();
              }, 
              child: Text('OK')
            )
          ],
          
        );

      }
    );
  }
}