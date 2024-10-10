import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop/Pages/homepage.dart';

import 'Pages/intropage.dart';
import 'models/cart.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}
 class MyApp extends StatefulWidget {
   const MyApp({super.key});

   @override
   State<MyApp> createState() => _MyAppState();
 }

 class _MyAppState extends State<MyApp> {
   @override
   Widget build(BuildContext context) {
     return ChangeNotifierProvider(
       create: (context) => Cart(),
        builder: (context, child) =>
            MaterialApp(
              home: Homepage(),
              debugShowCheckedModeBanner: false,
              routes: {
                '/home': (context) => Homepage(),
              },
            )
     );
   }
 }
