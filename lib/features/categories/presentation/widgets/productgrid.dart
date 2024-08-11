import 'package:flutter/material.dart';
import 'package:rovanna_app/core/utils/media.dart';
import 'package:rovanna_app/features/categories/presentation/widgets/categorybutton.dart';
import 'package:rovanna_app/features/categories/presentation/widgets/productsitems.dart';

class Productgrid extends StatefulWidget {
  const Productgrid({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ProductgridState createState() => _ProductgridState();
}

class _ProductgridState extends State<Productgrid> {
  String selectedCategory = 'All';

  void selectCategory(String category) {
    setState(() {
      selectedCategory = category;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CategoryButton(
                    label: 'All',
                    isSelected: selectedCategory == 'All',
                    onTap: () => selectCategory('All'),
                  ),
                  CategoryButton(
                    label: 'Shirt',
                    isSelected: selectedCategory == 'Shirt',
                    onTap: () => selectCategory('Shirt'),
                  ),
                  CategoryButton(
                    label: 'Shoes',
                    isSelected: selectedCategory == 'Shoes',
                    onTap: () => selectCategory('Shoes'),
                  ),
                  CategoryButton(
                    label: 'Bags',
                    isSelected: selectedCategory == 'Bags',
                    onTap: () => selectCategory('Bags'),
                  ),
                  CategoryButton(
                    label: 'Pull Over',
                    isSelected: selectedCategory == 'Pull Over',
                    onTap: () => selectCategory('Pull Over'),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(8.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 0.75,
              ),
              itemCount: 10,
              itemBuilder: (context, index) {
                return const ProductCard(
                  imageUrl: AssetImage(Media.categoryAccessories),
                  name: 'Product Name',
                  price: '1234.00 LE',
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
