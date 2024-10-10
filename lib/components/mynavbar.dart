import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class Mynavbar extends StatefulWidget {
  void Function(int)? onTabChange;
  Mynavbar({super.key, required this.onTabChange});

  @override
  State<Mynavbar> createState() => _MynavbarState();
}

class _MynavbarState extends State<Mynavbar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Container(
        child: GNav(
          padding: EdgeInsets.symmetric(vertical: 20,horizontal:10),
          color: Colors.grey[500]!,
            activeColor: Colors.black,
            tabActiveBorder: Border.all(color: Colors.white,width: 2),
            tabBackgroundColor: Colors.grey.shade200,
            mainAxisAlignment: MainAxisAlignment.center,
            tabBorderRadius: 25,
            gap: 8,
            onTabChange: (value)=> widget.onTabChange!(value),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Shop',
              ),
              GButton(
                icon: Icons.shopping_cart,
                text: 'Cart',
              ),
            ]
            )
      ),
    );
  }
}
