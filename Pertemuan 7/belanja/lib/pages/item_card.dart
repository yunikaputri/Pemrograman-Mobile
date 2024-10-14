import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class ItemCard extends StatelessWidget {
  final Item item;
  final VoidCallback onTap;

  const ItemCard({
    Key? key,
    required this.item,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Hero(
                tag: item.name,
                child: Image.asset(
                  item.photo,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item.name, style: const TextStyle(fontSize: 16)),
                  Text('Price: Rp ${item.price}'),
                  Text('Stock: ${item.stock}'),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.amber, size: 16),
                      Text('${item.rating}',
                          style: const TextStyle(fontSize: 14)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
