import 'package:flutter/material.dart';

void main() {
  runApp(const Widget3());
}

class Widget3 extends StatelessWidget {
  const Widget3({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cart'),
        ),
        body: Column(
          children: [
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.shopping_cart),
                SizedBox(width: 8.0),
                Text('Shopping Cart'),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/p1.jpg',
                    width: 100.0,
                    height: 100.0,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Calas'),
                    SizedBox(height: 8.0),
                    Text(''),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    Icon(Icons.add),
                    Text('1.0'),
                    Icon(Icons.minimize),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/p1.jpg',
                    width: 100.0,
                    height: 100.0,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Angel Hair'),
                    SizedBox(height: 8.0),
                    Text(''),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    Icon(Icons.add),
                    Text('2.0'),
                    Icon(Icons.minimize),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Subtotal'),
                Text(''),
              ],
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {},
              child: Text('Checkout'),
            ),
          ],
        ),
      ),
    );
  }
}