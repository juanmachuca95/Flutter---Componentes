
import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
        backgroundColor: Colors.orange,        
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
}