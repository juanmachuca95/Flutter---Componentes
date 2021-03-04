
import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider = 100.0;
  bool _activarSlider = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Page'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 30.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _crearCheckbox(),
            Expanded(
              child: _crearImagen()
            )
          ],
        ),
      )
    );
  }

  Widget _crearSlider() {

    String tamanio = 'Tamaño de la Imagen: '+_valorSlider.toString();
    
    return Slider(
      activeColor: Colors.indigo,
      label: tamanio,
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged: (!_activarSlider) ? null :  ( valor ){

          setState(() {
            _valorSlider = valor;
            print(_valorSlider);
          });

        },
    );

  }

  Widget _crearImagen() {

    return Image(
      image: NetworkImage('http://1.bp.blogspot.com/-79DdxzZkDog/T76QV6v5IuI/AAAAAAAAAEY/6DzpGZzsmfA/s320/homerocatolico_456_336.jpg'),
      width: _valorSlider,
      fit: BoxFit.contain
    );

  }

  Widget _crearCheckbox() {

    /* return Checkbox(
      value: _activarSlider,
      onChanged: ( valor ){

        setState(() {
        
          _activarSlider = valor;
        
        });

      },
    ); */
      return CheckboxListTile(
        title: Text('Activar cambio de tamaño'),
        value: _activarSlider,
        onChanged: ( valor ){

        setState(() {
        
          _activarSlider = valor;
        
        });
      }
    );
  }

}