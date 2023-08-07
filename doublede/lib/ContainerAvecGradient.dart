
import 'package:flutter/material.dart';

import 'MesDe2.dart';



class ContainerAvecGradient extends StatelessWidget {
  final Color couleur1;
  final Color couleur2;
  final Color couleur3;
  

  const ContainerAvecGradient({
    Key? key,
    required this.couleur1,
    required this.couleur2,
    required this.couleur3,
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.topRight,
          colors: [couleur1, couleur2, couleur3],
        ),
      ),
      child:const Center(
        child:MesDe(),
      ),
    ); 
  }
}
