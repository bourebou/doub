import 'package:flutter/material.dart';

import 'ContainerAvecGradient.dart';




void main() {
  
  runApp(
   const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: ContainerAvecGradient(
         
          couleur1:Colors.green,
          couleur2:Colors.red,
          couleur3:Colors.yellow,
        
         
        ),
      ),
    ),
  );
}
