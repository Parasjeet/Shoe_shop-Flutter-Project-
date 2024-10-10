import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart.dart';
import '../models/shoe.dart';


class CartItems extends StatefulWidget {
  Shoe shoe;

  //remove from cart
  CartItems({super.key, required this.shoe});

  @override
  State<CartItems> createState() => _CartItemsState();
}

class _CartItemsState extends State<CartItems> {
  void removeFromCart(Shoe shoe) {
    Provider.of<Cart>( context ,listen: false).removeFromCart(shoe);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Image.asset(widget.shoe.image,),
        title: Text(widget.shoe.name),
        subtitle: Text('\$${widget.shoe.price}'),
        trailing: IconButton(
            onPressed: () => removeFromCart(widget.shoe),
            icon: Icon(Icons.delete_outline))
        )
    );
  }
}
