import 'package:flutter/material.dart';

class ToboganesPage extends StatefulWidget {
  const ToboganesPage({super.key});

  @override
  State<ToboganesPage> createState() => _ToboganesPageState();
}

class _ToboganesPageState extends State<ToboganesPage> {
  final t1 = TextEditingController();
  final t2 = TextEditingController();
  final t3 = TextEditingController();
  String res = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Toboganes')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: t1, decoration: const InputDecoration(labelText: 'Tobogán 1')),
            TextField(controller: t2, decoration: const InputDecoration(labelText: 'Tobogán 2')),
            TextField(controller: t3, decoration: const InputDecoration(labelText: 'Tobogán 3')),
            ElevatedButton(
              onPressed: () {
                List<int> v = [
                  int.parse(t1.text),
                  int.parse(t2.text),
                  int.parse(t3.text),
                ];
                int s = 0;
                for (var x in v) {
                  s += x;
                }
                double p = s / v.length;
                setState(() => res = 'Vueltas: $s Promedio: ${p.toStringAsFixed(1)}');
              },
              child: const Text('Calcular'),
            ),
            Text(res),
          ],
        ),
      ),
    );
    }
}
