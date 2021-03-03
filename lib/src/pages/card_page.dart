import 'package:flutter/material.dart';


class CardPage extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Page'),
      ),

      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[
          _cardTipo1(),
        ],
      ),
    );

  }

  Widget _cardTipo1() {
  
    return Card(
      
      child: Column(
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.all(20.0),
            leading: Icon( Icons.photo_album, color: Colors.blue ),
            title: Text('Titulo de mi card'),
            subtitle: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                child: Text('Cancelar'),
                onPressed: (){}, 
              ),
              TextButton(
                child: Text('Ok'),
                onPressed: (){}, 
              )
            ],
          )
        ],
      ),
    );
  
  }
}