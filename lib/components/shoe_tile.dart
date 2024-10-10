import 'package:flutter/material.dart';

import '../models/shoe.dart';

class ShoeTile extends StatefulWidget {
  void Function()? onTap;
  Shoe shoe;
  ShoeTile({super.key, required this.shoe, required this.onTap});

  @override
  State<ShoeTile> createState() => _ShoeTileState();
}

class _ShoeTileState extends State<ShoeTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25,bottom:80,top: 10),
      width: 330,
      decoration:BoxDecoration(color:Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //shoe image
          children: [
            ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Image.asset(widget.shoe.image),
                )),
            //shoe discription
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(widget.shoe.description,
                      style: TextStyle(
                      color: Colors.grey[600],),),
                ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.shoe.name, style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18),),
                        Text(widget.shoe.price, style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,color: Colors.grey[600]),),
                      ],
                  ),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Container(
                      height: 60,
                        width: 60,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(12), bottomRight: Radius.circular(12)),
                      ),
                      child: Icon(Icons.add,
                      color: Colors.white,
                      size: 35,)

                    ),
                  ),],

              ),
            )
            //shoe price + details
          ]



        //button

      ),
    );
  }
}


