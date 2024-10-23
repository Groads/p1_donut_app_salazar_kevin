import 'package:flutter/material.dart';

class BurgerTile extends StatelessWidget {
    final String BurgerFlavor;
    final String BurgerPrice;
    final dynamic BurgerColor;//dynamic porque sera de tipo color
    final String BurgerImage;

const BurgerTile({super.key, required this.BurgerFlavor, required this.BurgerPrice, this.BurgerColor, required this.BurgerImage});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(color:BurgerColor[50],borderRadius: BorderRadius.circular(24)),
      child:Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
          children: [Container(
            decoration: BoxDecoration(
              color:BurgerColor[100],
              borderRadius:const BorderRadius.only(
              topRight: Radius.circular(24),
              bottomLeft:Radius.circular(24))),
            padding: 
              const EdgeInsets.symmetric(vertical: 8,horizontal: 18),
            child:Text('\$$BurgerPrice',
            style: TextStyle(fontSize:18, 
            fontWeight: FontWeight.bold,
            color: BurgerColor[800]),),
            )
            ],
            ),
             //Donut Picture
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24,vertical:12),
              child: Image.asset(BurgerImage),
            ),
            //Donut flavor text
            Text(BurgerFlavor,style: const TextStyle(fontSize:16, 
            fontWeight: FontWeight.bold)),
           
            Text('Dunkin´s',
            style:TextStyle(color: Colors.grey[600])
            ),
            //Love Icon + add button
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Love Icon
                  Icon(Icons.favorite, color:Colors.pink[400]),
                  //Plus buttons
                  Icon(Icons.add, color:Colors.grey[800])
                ],
              ),
            )
            ],
            )
      ),
    );
  }
}