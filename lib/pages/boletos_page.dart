import 'package:flutter/material.dart';

class BoletosPage extends StatefulWidget {
  const BoletosPage({super.key});

  @override
  State<BoletosPage> createState() => _BoletosPageState();
}

class _BoletosPageState extends State<BoletosPage> {
  final ninos = TextEditingController();
  final adultos = TextEditingController();
  String dia = 'Semana';
  String total = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Boletos')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Image.asset('assets/ap.jpg'),
            TextField(controller: ninos, decoration: const InputDecoration(labelText: 'Niños')),
            TextField(controller: adultos, decoration: const InputDecoration(labelText: 'Adultos')),
            DropdownButton<String>(
              value: dia,
              items: const [
                DropdownMenuItem(value: 'Semana', child: Text('Semana')),
                DropdownMenuItem(value: 'Fin de semana', child: Text('Fin de semana')),
              ],
              onChanged: (v) => setState(() => dia = v!),
            ),
            ElevatedButton(
              onPressed: () {
                int cN = int.parse(ninos.text);
                int cA = int.parse(adultos.text);
                double pN = 5;
                double pA = 10;
                double t = cN * pN + cA * pA;
                if (dia == 'Semana') t *= 0.9;
                setState(() => total = 'Total: \$${t.toStringAsFixed(2)}');
              },
              child: const Text('Calcular total'),
            ),
            Text(total),
            ],
        ),
      ),
    );
  }
}
