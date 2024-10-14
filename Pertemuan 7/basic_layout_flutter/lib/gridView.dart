import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Layout Demo'),
        ),
        body: _buildGrid(),
      ),
    );
  }

  // Method untuk membangun grid menggunakan GridView.extent
  Widget _buildGrid() => GridView.extent(
        maxCrossAxisExtent: 150,
        padding: const EdgeInsets.all(4),
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: _buildGridTileList(30),
      );

  // // Membuat daftar tile Grid dengan gambar dari assets
  // List<Container> _buildGridTileList(int count) => List.generate(
  //   count,
  //   (i) => Container(
  //   child: Image.asset('assets/pic$i.jpeg', width: 100, height: 100),
  //   ),
  // );

  // Menggunakan Icon sebagai placeholder
  List<Container> _buildGridTileList(int count) => List.generate(
        count,
        (i) => Container(
          child: const Icon(Icons.image,
              size: 100), // Gunakan icon sebagai pengganti gambar
        ),
      );
}
