import 'package:flutter/material.dart';


class KioscosPage extends StatefulWidget {
  const KioscosPage({super.key});

  @override
  State<KioscosPage> createState() => _KioscosPageState();
}

class _KioscosPageState extends State<KioscosPage> {
  final nombre = TextEditingController();
  final precio = TextEditingController();
  final cant = TextEditingController();
  List<Map<String, dynamic>> lista = [];
  String total = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Kioscos')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: nombre, decoration: const InputDecoration(labelText: 'Producto')),
            TextField(controller: precio, decoration: const InputDecoration(labelText: 'Precio')),
            TextField(controller: cant, decoration: const InputDecoration(labelText: 'Cantidad')),
            ElevatedButton(
              onPressed: () {
                double p = double.parse(precio.text);
                int c = int.parse(cant.text);
                double sub = p * c;
                setState(() => lista.add({'n': nombre.text, 'p': p, 'c': c, 's': sub}));
              },
              child: const Text('Agregar consumo'),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: lista.length,
                itemBuilder: (_, i) {
                  var x = lista[i];
                  return ListTile(
                    title: Text('${x['n']} - Subtotal: ${x['s']}'),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () => setState(() => lista.removeAt(i)),
                    ),
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                double s = 0;
                for (var x in lista) {
                  s += x['s'];
                }
                double p = lista.isNotEmpty ? s / lista.length : 0;
                setState(() => total = 'Total: $s Promedio: ${p.toStringAsFixed(1)} Items: ${lista.length}');
              },
              child: const Text('Calcular gasto total'),
            ),
            Text(total),
          ],
        ),
      ),
    );
  }
}