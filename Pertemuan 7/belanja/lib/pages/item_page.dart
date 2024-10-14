import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text(itemArgs.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              itemArgs.photo,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16),
            Text('Item Name: ${itemArgs.name}', style: TextStyle(fontSize: 24)),
            Text('Price: Rp ${itemArgs.price}', style: TextStyle(fontSize: 20)),
            Text('Stock: ${itemArgs.stock}', style: TextStyle(fontSize: 20)),
            Row(
              children: [
                Icon(Icons.star, color: Colors.amber, size: 24),
                Text('${itemArgs.rating}', style: TextStyle(fontSize: 20)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
