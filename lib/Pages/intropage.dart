import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           //top
           Padding(
             padding: const EdgeInsets.all(24),
             child: Image.asset('assets/images/nike.png'),
           ),
           SizedBox(height: 40,),
           //title

           Text('just do it',
             style: TextStyle(
               fontSize: 28,
               fontWeight: FontWeight.bold,
             ),),
           SizedBox(height: 20,),
           Text('Brand new sneakers and custom kicks made with premium material',
           style: TextStyle(
             color: Colors.grey[600],
             fontSize: 18
           ),
             textAlign: TextAlign.center,
           ),
           //start button
           SizedBox(height: 40,),
           GestureDetector(
             onTap: () {
               Navigator.pushNamed(context, '/home');
             },
            child: Container(
              height: 65,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(12)
              ),
              padding: EdgeInsets.all(20),
              child: Center(
                child: Text('Shop Now',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white),
                ),
              ),),
          )

         ],
       ),
     )
    );
  }
}


