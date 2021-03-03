
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  
  String _nombre = '';
  String _email = '';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs de texto'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        children: <Widget>[
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _mostrarValor()

        ],
      )
    );
  }

  Widget _crearInput(){

    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        counter: Text('Letras de ${ _nombre.length }'),
        hintText: 'Escribe algo . . .',
        labelText: 'String',
        helperText: 'Solo escribe algo',
        suffixIcon: Icon( Icons.accessibility ),
        icon: Icon( Icons.account_circle )
      ),
      onChanged: (valor){
        setState(() {
          
          _nombre = valor;
          print(_nombre);
          
        });
      },
    );

  }

  Widget _crearEmail() {

    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Correo electronico . . .',
        labelText: 'Email',
        suffixIcon: Icon( Icons.alternate_email ),
        icon: Icon( Icons.email )
      ),
      onChanged: (valor){
        setState(() {
          
          _email = valor;
          
        });
      },
    );
  }

  Widget _mostrarValor() {

    return ListTile(
      title: Text('El valor ingresado es: '+_nombre),
      subtitle: Text('Email: '+_email),
    );

  }

  
}