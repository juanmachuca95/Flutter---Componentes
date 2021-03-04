
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  
  String _nombre = '';
  String _email = '';
  String _password = '';
  String _fecha = '';
  
  String _menuSeleccionado = 'Primera';
  List<String> _menuopciones = ['Primera', 'Segunda', 'Tercera', 'Cuarta'];
  TextEditingController _inputFieldDateController = new TextEditingController();

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
          _crearPassword(),
          Divider(),
          _crearFecha( context ),
          Divider(),
          _crearDropdown(),
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

  Widget _crearPassword(){
    return TextField(
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        hintText: 'Escribe tu contraseña . . .',
        labelText: 'Contraseña',
        suffixIcon: Icon( Icons.lock_open ),
        icon: Icon( Icons.lock_rounded)
      ),
      onChanged: (valor){
        setState(() {
          
          _password = valor;
          
        });
      },
    );
  }

  Widget _crearFecha( BuildContext context ) {
    return TextField(
      controller: _inputFieldDateController,
      enableInteractiveSelection: false,
      decoration: InputDecoration(
        hintText: 'Fecha de Nacimiento . . .',
        labelText: 'Fecha',
        suffixIcon: Icon( Icons.perm_contact_calendar ),
        icon: Icon( Icons.calendar_today )
      ),
      onTap: (){

        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate( context );

      },
    );
  }


  Widget _mostrarValor() {

    return ListTile(
      title: Text('El valor ingresado es: '+_nombre),
      subtitle: Text('Email: '+_email+' Contraseña: '+_password+' Fecha: '+_fecha),
    );

  }

  void _selectDate(BuildContext context) async {

    DateTime picked = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(1990),
      lastDate: new DateTime(2025)
    ); 

    if( picked != null ){
      setState((){

        _fecha = picked.toString();
        _inputFieldDateController.text = _fecha;

      });
    }

  }


  List<DropdownMenuItem<String>> getOpcionesDropdown(){

    List<DropdownMenuItem<String>> lista = [];

    _menuopciones.forEach( (menuopt) {

      lista.add( DropdownMenuItem(
        child: Text( menuopt ),
        value: menuopt, 
      ));

    });

    return lista;

  }


  Widget _crearDropdown() {

    return DropdownButton(     
      value: _menuSeleccionado,
      items: getOpcionesDropdown(),
      onChanged: (opt){
        setState(() {
          
          _menuSeleccionado = opt;
          print(_menuSeleccionado);
        });
      },
      
    );

  }
  
} 