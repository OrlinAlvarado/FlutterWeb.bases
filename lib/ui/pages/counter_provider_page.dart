import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:bases_web/providers/counter_provider.dart';
import 'package:bases_web/ui/shared/custom_app_menu.dart';
import 'package:bases_web/ui/shared/custom_flat_button.dart';

class CounterProviderPage extends StatelessWidget {
  const CounterProviderPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CounterProvider(),
      child: const _CounterProviderPageBody()
    );
  }
}

class _CounterProviderPageBody extends StatelessWidget {
  const _CounterProviderPageBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CustomAppMenu(),
          const Spacer(),
          const Text('Contador Provider', style: TextStyle( fontSize: 20 ), ),
          FittedBox(
            fit: BoxFit.contain,
            child: Padding(
              padding: const EdgeInsets.symmetric( horizontal: 10 ),
              child: Text(
                'Countador: ${ counterProvider.counter }',
                style: const TextStyle( fontSize: 80, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomFlatButton(
                text: 'Incrementar', 
                onPressed: () => counterProvider.increment()
              ),
              CustomFlatButton(
                text: 'Decrementar', 
                onPressed: () => counterProvider.decrement()
              ),
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}