import 'package:flutter/material.dart';
import '../utils/burger_tile.dart';

class BurgerTab extends StatelessWidget {
  final List donutsOnSale = [
    ["Ice Cream", "36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "45", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape", "84", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco", "95", Colors.brown, "lib/images/chocolate_donut.png"],
    ["Caramel Delight", "55", Colors.orange, "lib/images/caramel_donut.png"],
    ["Mint Chocolate", "67", Colors.green, "lib/images/mint_donut.png"],
    ["Raspberry", "78", Colors.pink, "lib/images/raspberry_donut.png"],
    ["Peanut Butter", "88", Colors.amber, "lib/images/peanut_donut.png"],
  ];

  final Function(String, double) addToCart;
  final Function(String, double) removeFromCart;

    BurgerTab({
    super.key,
    required this.addToCart,
    required this.removeFromCart,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutsOnSale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1 / 1.6),
      itemBuilder: (context, index) {
        return Column(
          children: [
            GestureDetector(
              onTap: () {
                // Añadir al carrito al hacer tap
                String name = donutsOnSale[index][0];
                double price = double.parse(donutsOnSale[index][1]);
                addToCart(name, price);
              },
              child: BurgerTile(
                BurgerFlavor: donutsOnSale[index][0],
                BurgerPrice: donutsOnSale[index][1],
                BurgerColor: donutsOnSale[index][2],
                BurgerImage: donutsOnSale[index][3],
              ),
            ),
            // Botones para añadir y eliminar del carrito
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Botón de eliminar
                GestureDetector(
                  onTap: () {
                    String name = donutsOnSale[index][0];
                    double price = double.parse(donutsOnSale[index][1]);
                    removeFromCart(name, price);
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.red[100],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Icon(
                      Icons.remove,
                      color: Colors.blue,
                      size: 24,
                    ),
                  ),
                ),
                // Botón de añadir
                GestureDetector(
                  onTap: () {
                    String name = donutsOnSale[index][0];
                    double price = double.parse(donutsOnSale[index][1]);
                    addToCart(name, price);
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.green[100],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.pink,
                      size: 24,
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
