import 'package:flutter/material.dart';

class ComidaPage extends StatefulWidget {
  const ComidaPage({super.key});

  @override
  State<ComidaPage> createState() => _ComidaPageState();
}

class _ComidaPageState extends State<ComidaPage> {
  final inf = TextEditingController();
  final adu = TextEditingController();
  String total = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Comida')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: inf, decoration: const InputDecoration(labelText: 'Combo infantil')),
            TextField(controller: adu, decoration: const InputDecoration(labelText: 'Combo adulto')),
            ElevatedButton(
              onPressed: () {
                int cI = int.parse(inf.text);
                int cA = int.parse(adu.text);
                double t = cI * 4 + cA * 7;
                setState(() => total = 'Total: \$${t.toStringAsFixed(2)}');
              },
              child: const Text('Calcular gasto en comida'),
            ),
            Text(total),
          ],
        ),
      ),
    );
  }
}