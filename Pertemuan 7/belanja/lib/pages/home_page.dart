import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';
import 'item_card.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
      name: 'Sugar',
      price: 5000,
      photo: 'assets/sugar.jpg',
      stock: 50,
      rating: 4.5,
    ),
    Item(
      name: 'Salt',
      price: 2000,
      photo: 'assets/salt.png',
      stock: 100,
      rating: 4.0,
    ),
    Item(
      name: 'Soy Sauce',
      price: 2000,
      photo: 'assets/soySauce.png',
      stock: 100,
      rating: 4.0,
    ),
    Item(
      name: 'Mayonaise',
      price: 2000,
      photo: 'assets/mayonaise.png',
      stock: 100,
      rating: 4.0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping List'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return ItemCard(
            item: item,
            onTap: () {
              Navigator.pushNamed(
                context,
                '/item',
                arguments: item,
              );
            },
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Yunika Puteri Dwi Antika (2241760048)'),
            ],
          ),
        ),
      ),
    );
  }
}
