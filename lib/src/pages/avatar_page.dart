import 'package:flutter/material.dart';


class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[

          CircleAvatar(
            backgroundImage: NetworkImage( 'https://st.depositphotos.com/1008939/1316/i/950/depositphotos_13163725-stock-photo-young-man.jpg' ),
          ),

          Container(
            margin: EdgeInsets.only( right: 10.0 ),
            child: CircleAvatar(
              child: Text('JGM'),
              backgroundColor: Colors.orange
            )
          )
        ]
      ),


      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'), 
          image: NetworkImage('https://st.depositphotos.com/1008939/1316/i/950/depositphotos_13163725-stock-photo-young-man.jpg'),
        ),
      ),
      
    );

  }
}