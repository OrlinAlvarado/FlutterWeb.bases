import 'package:bases_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class View404 extends StatelessWidget {
  const View404({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('404', style: TextStyle( fontSize: 40, fontWeight: FontWeight.bold),),
            const SizedBox( height: 10,),
            const FittedBox(
              fit: BoxFit.contain,
              child: const Text('No se encontro la pagina', style: TextStyle( fontSize: 40),)
            ),
            CustomFlatButton(
              text: 'Regresar', 
              onPressed: () => Navigator.pushNamed(context, '/stateful')
            )
          ]
        ),
    );
  }
}