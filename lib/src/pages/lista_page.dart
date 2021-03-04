
import 'package:flutter/material.dart';
import 'dart:async';

class ListaPage extends StatefulWidget {
  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {

  ScrollController _scrollController = new ScrollController();
  List<int> _lista = [];
  int _ultimoItem = 0;
  bool _isLoading = false;

  @override
  void initState() { 
    super.initState();
    _agregar10();


    _scrollController.addListener(() {
      if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent ){
        //_agregar10();
        fetchData(); 
      }
    });
  }

  @override
  void dispose() { 
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Listas')
      ),
      body: _crearLista()

    );
  }

  Widget _crearLista() {

    return ListView.builder(
      controller: _scrollController,
      itemCount: _lista.length,
      itemBuilder: (BuildContext context, int index ){

        final indexImage = _lista[index];

        return FadeInImage(
          image: NetworkImage('https://picsum.photos/200/300/?blur=$indexImage'),
          placeholder: AssetImage('assets/jar-loading.gif'),
        );
      },
    );

  }


  void _agregar10(){
    _ultimoItem = 0;
    for(var i = 0; i < 5; i ++){
      _ultimoItem++;
      _lista.add( _ultimoItem );
    }

    setState((){

    });

  }

  Future<Null> fetchData() async {
    
    _isLoading = true;
    setState((){});
    
    final duration = new Duration( seconds:  2 );
    return new Timer( duration, respuestaHTTP );
  
  }

  void respuestaHTTP(){

    _isLoading = false;
    _agregar10();

  }
}