
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Product {
  final String name;
  final double price;

  Product({required this.name, required this.price});
}

class CartItem {
  final Product product;
  int quantity;

  CartItem({required this.product, this.quantity = 1});
}

class Cart {
  List<CartItem> items = [];
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web Add to Cart',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Cart cart = Cart();
  List<Product> products = [
    Product(name: 'Product 1', price: 20.0),
    Product(name: 'Product 2', price: 30.0),
    Product(name: 'Product 3', price: 25.0),
  ];

  void addToCart(Product product) {
    bool itemExists = false;

    for (CartItem item in cart.items) {
      if (item.product == product) {
        item.quantity++;
        itemExists = true;
        break;
      }
    }

    if (!itemExists) {
      cart.items.add(CartItem(product: product));
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Web Add to Cart'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Products:',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            for (Product product in products)
              ListTile(
                title: Text(product.name),
                subtitle: Text('\$${product.price.toStringAsFixed(2)}'),
                trailing: ElevatedButton(
                  onPressed: () => addToCart(product),
                  child: Text('Add to Cart'),
                ),
              ),
            SizedBox(height: 20),
            Text(
              'Shopping Cart:',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            for (CartItem item in cart.items)
              ListTile(
                title: Text(item.product.name),
                subtitle: Text('Quantity: ${item.quantity}'),
              ),
          ],
        ),
      ),
    );
  }
}



