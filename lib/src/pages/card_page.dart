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
          _cardTipo2(),
        ],
      ),
    );

  }

  Widget _cardTipo1() {
  
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(50) ),

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
              SizedBox(height: 30.0),
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

  Widget _cardTipo2(){

    return Card(
      elevation: 10.0,
      
      child: Column(
        children: <Widget>[
          FadeInImage(
            image : NetworkImage('https://www.tom-archer.com/wp-content/uploads/2018/06/milford-sound-night-fine-art-photography-new-zealand.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration( milliseconds: 200 ),
            height: 300.0,
            fit: BoxFit.cover,
          ),
         
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('No tengo idea de que poner'),
          )
        ]
      )
    );

  }
}