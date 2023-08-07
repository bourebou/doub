import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MesDe extends StatefulWidget {
  const MesDe({super.key});

  @override
  State<MesDe> createState() => _MesDeState();
}

class _MesDeState extends State<MesDe> {
  var de1 = 'assets/images/dice-1.png';
  var de2 = 'assets/images/dice-2.png';

  void miseAjour() {
    var nombre1 = Random().nextInt(6) + 1;
    var nombre2 = Random().nextInt(6) + 1;
    setState(() {
      de1 = 'assets/images/dice-$nombre1.png';
      de2 = 'assets/images/dice-$nombre2.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                de1,
                width: 200,
              ),
            
          const Gap(64),
          Image.asset(
            de2,
            width: 200,
          ),],),
          const Gap(64),
          TextButton(
            onPressed: miseAjour,
            style: TextButton.styleFrom(
              foregroundColor: Colors.amber,
              textStyle: const TextStyle(fontSize: 18),
            ),
            child: const Text('relancer'),
          ),
        ],
      ),
    );
  }
}
