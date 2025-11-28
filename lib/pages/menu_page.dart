import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Parque Acuático Familiar')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Bienvenido al parque'),
            ElevatedButton(
              onPressed: () => context.push('/boletos'),
              child: const Text('Boletos y descuentos'),
            ),
            ElevatedButton(
              onPressed: () => context.push('/comida'),
              child: const Text('Gasto en comida'),
            ),
            ElevatedButton(
              onPressed: () => context.push('/toboganes'),
              child: const Text('Plan de toboganes'),
            ),
            ElevatedButton(
              onPressed: () => context.push('/kioscos'),
              child: const Text('Kioscos'),
            ),
          ],
        ),
      ),
    );
  }
}
