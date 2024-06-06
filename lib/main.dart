import 'package:flutter/material.dart';
import 'product_details.dart';

void main() {
  runApp(ProductApp());
}

class ProductApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {
      'name': 'Pixel',
      'description': 'A Google smartphone',
      'icon': Icons.phone_android,
      'price': 699,
      'latest_version': 'Pixel 6',
      'rating': 4.5,
      'colors': ['Black', 'White', 'Blue'],
      'color': Colors.blue[100],
    },
    {
      'name': 'Laptop',
      'description': 'A personal computer',
      'icon': Icons.laptop,
      'price': 999,
      'latest_version': 'Laptop Pro 2021',
      'rating': 4.0,
      'colors': ['Silver', 'Gray'],
      'color': Colors.grey[200],
    },
    {
      'name': 'Tablet',
      'description': 'A handheld computer',
      'icon': Icons.tablet,
      'price': 499,
      'latest_version': 'Tablet X',
      'rating': 4.2,
      'colors': ['Black', 'Gold'],
      'color': Colors.amber[100],
    },
    {
      'name': 'Pen Drive',
      'description': 'A portable storage device',
      'icon': Icons.usb,
      'price': 19,
      'latest_version': 'Pen Drive 3.0',
      'rating': 4.8,
      'colors': ['Red', 'Blue', 'Green'],
      'color': Colors.green[100],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            final product = products[index];
            return Card(
              color: product['color'],
              elevation: 4,
              margin: EdgeInsets.symmetric(vertical: 8.0),
              child: ListTile(
                leading: Icon(product['icon']),
                title: Text(product['name']),
                subtitle: Text('Price: \$${product['price']}'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ProductDetailsPage(product: product),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
