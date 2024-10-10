import 'package:flutter/material.dart';
import 'package:sneaker_shop/Pages/cartPage.dart';
import 'package:sneaker_shop/Pages/shopPage.dart';
import 'package:sneaker_shop/components/mynavbar.dart';


class Homepage extends StatefulWidget {Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  var _selectedIndex = 0;

  void navigateBottomBar(int index) {
  setState(() {
    _selectedIndex = index;
  });
  }
  final List<Widget> pages = [
    ShopPage(),
    Cartpage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('Homepage'),
          backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(icon: Icon(Icons.menu),
            onPressed: () {
             Scaffold.of(context).openDrawer();
            },
          ),
        )
      ),
      bottomNavigationBar: Mynavbar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: pages[_selectedIndex],
      drawer:Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           Column(
             children: [
               DrawerHeader(
                 child: Image.asset('assets/images/nike.png',color: Colors.white,),
               ),

               Padding(
                 padding: const EdgeInsets.only(left: 20,top: 50),
                 child: ListTile(
                   leading: Icon(Icons.home, color: Colors.white,),
                   title: Text('Home', style: TextStyle(color: Colors.white),),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(left: 20,),
                 child: ListTile(
                   leading: Icon(Icons.info, color: Colors.white,),
                   title: Text('About', style: TextStyle(color: Colors.white),),
                 ),
               ),
             ],
           ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 25),
              child: ListTile(
                leading: Icon(Icons.logout, color: Colors.white,),
                title: Text('LogOut', style: TextStyle(color: Colors.white),),
              ),
            ),

          ]
        )
      ),
    );
  }
}

