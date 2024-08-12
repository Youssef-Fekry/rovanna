import 'package:flutter/material.dart';
import 'package:rovanna_app/core/utils/constans.dart';
import 'package:rovanna_app/core/utils/media.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      child: Container(
        color: kSecoundryColor,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const Center(
                child: SizedBox(
                  height: 100,
                  width: 60,
                  child: Image(
                    image: AssetImage(Media.categoryAccessories),
                  ),
                ),
              ),
              const Row(
                children: [
                  Expanded(
                    child: Text('Lacy Leggings',
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                  ),
                  Text('340.00 LE',
                      style: TextStyle(fontSize: 20, color: Colors.black)),
                ],
              ),
              const SizedBox(height: 8),
              const Text('380.00 LE',
                  style: TextStyle(
                      fontSize: 16,
                      decoration: TextDecoration.lineThrough,
                      color: Colors.red)),
              const SizedBox(height: 8),
              const Text('Ruzita',
                  style: TextStyle(fontSize: 16, color: Colors.black)),
              const SizedBox(height: 16),
              const Text('Select Color',
                  style: TextStyle(fontSize: 16, color: Colors.black)),
              const SizedBox(height: 8),
              Row(
                children: [
                  _buildColorOption(
                    Colors.blue,
                    'Blue',
                  ),
                  _buildColorOption(Colors.red, 'Red'),
                  _buildColorOption(Colors.white, 'White'),
                  _buildColorOption(Colors.pink, 'Pink'),
                ],
              ),
              const SizedBox(height: 16),
              const Text(
                'Select Size',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  _buildSizeOption('S'),
                  _buildSizeOption('M'),
                  _buildSizeOption('L'),
                  _buildSizeOption('XL'),
                  _buildSizeOption('2XL'),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildQuantitySelector(),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Add to cart',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildColorOption(Color color, String label) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: Column(
          children: [
            CircleAvatar(backgroundColor: color),
            const SizedBox(height: 4),
            Text(
              label,
              style: const TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSizeOption(String size) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: Chip(
            label: Text(
          size,
          style: const TextStyle(),
        )),
      ),
    );
  }

  Widget _buildQuantitySelector() {
    return Row(
      children: [
        IconButton(
            icon: const Icon(
              Icons.remove,
              color: Colors.black,
            ),
            onPressed: () {}),
        const Text(
          '1',
          style: TextStyle(color: Colors.black),
        ),
        IconButton(
            icon: const Icon(
              Icons.add,
              color: Colors.black,
            ),
            onPressed: () {}),
      ],
    );
  }
}
