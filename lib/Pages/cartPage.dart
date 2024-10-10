import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/cart_items.dart';
import '../models/shoe.dart';
import '../models/cart.dart';

class Cartpage extends StatefulWidget {
  const Cartpage({super.key});

  @override
  State<Cartpage> createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            const Text(
              'My Cart',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: value.getUserCart().length,  // Ensure item count is set
                itemBuilder: (context, index) {
                  Shoe shoe = value.getUserCart()[index];  // Fetch shoe object

                  return CartItems(shoe: shoe,);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
