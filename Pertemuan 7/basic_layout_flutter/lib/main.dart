// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MainApp());
// }

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Flutter Layout Demo'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Text('Hello World!'),
//               const SizedBox(height: 20),
//               // Row(
//               //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               //   children: [
//               //     Image.asset('assets/pic1.jpeg', width: 100, height: 100),
//               //     Image.asset('assets/pic2.jpeg', width: 100, height: 100),
//               //     Image.asset('assets/pic3.jpeg', width: 100, height: 100),
//               //   ],
//               // ),

//               // Column(
//               //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               //   children: [
//               //     Image.asset('assets/pic1.jpeg', width: 100, height: 100),
//               //     Image.asset('assets/pic2.jpeg', width: 100, height: 100),
//               //     Image.asset('assets/pic3.jpeg', width: 100, height: 100),
//               //   ],
//               // ),

//               // Row(
//               //   crossAxisAlignment: CrossAxisAlignment.center,
//               //   children: [
//               //     Expanded(
//               //       child: Image.asset('assets/pic1.jpeg'),
//               //     ),
//               //     Expanded(
//               //       child: Image.asset('assets/pic2.jpeg'),
//               //     ),
//               //     Expanded(
//               //       child: Image.asset('assets/pic3.jpeg'),
//               //     ),
//               //   ],
//               // ),

//               // Row(
//               //   crossAxisAlignment: CrossAxisAlignment.center,
//               //   children: [
//               //     Expanded(
//               //       child: Image.asset('assets/pic1.jpeg'),
//               //     ),
//               //     Expanded(
//               //       flex: 2,
//               //       child: Image.asset('assets/pic2.jpeg'),
//               //     ),
//               //     Expanded(
//               //       child: Image.asset('assets/pic3.jpeg'),
//               //     ),
//               //   ],
//               // ),

//               Row(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Icon(Icons.star, color: Colors.green[500]),
//                   Icon(Icons.star, color: Colors.green[500]),
//                   Icon(Icons.star, color: Colors.green[500]),
//                   const Icon(Icons.star, color: Colors.black),
//                   const Icon(Icons.star, color: Colors.black),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('List Demo'),
        ),
        body: Scrollbar(
          child: ListView(
            restorationId: 'list_demo_list_view',
            padding: const EdgeInsets.symmetric(vertical: 8),
            children: _buildListTiles(),
          ),
        ),
      ),
    );
  }

  // Method untuk membangun daftar item ListTile
  List<Widget> _buildListTiles() {
    const int itemCount = 20; // Jumlah item yang ditampilkan
    return List.generate(itemCount, (index) {
      return ListTile(
        leading: ExcludeSemantics(
          child: CircleAvatar(child: Text('${index + 1}')),
        ),
        title: Text('Item ${index + 1}'),
        subtitle: index % 2 == 0 // Menggunakan kondisi untuk subtitle
            ? const Text('Secondary text')
            : null,
      );
    });
  }
}
