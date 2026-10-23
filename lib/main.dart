import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Pertamaku',
      theme: ThemeData(colorSchemeSeed: Colors.blue),
      home: const HalamanUtama(),
    );
  }
}

class HalamanUtama extends StatefulWidget {
  const HalamanUtama({super.key});

  @override
  State<HalamanUtama> createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  int _hitungan = 0;

  void _tambah() {
    setState(() {
      _hitungan++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halo Flutter!'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Halo, namaku [Siti Cantik]',
              style: TextStyle(fontSize: 22),
            ),
            const SizedBox(height: 20),
            Text(
              'Kamu menekan tombol $_hitungan kali',
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _tambah,
        child: const Icon(Icons.add),
      ),
    );
  }
}