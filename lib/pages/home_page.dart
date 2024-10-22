import 'package:flutter/material.dart';
import 'package:p1_donut_app_salazar_kevin/utils/my_tab.dart';
import '../tab/donut_tab.dart';
import '../tab/burger_tab.dart';
import '../tab/pancake_tab.dart';
import '../tab/smothie_tab.dart';
import '../tab/pizza_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  List<Widget> myTabs = [
    const MyTab(iconPath: "lib/icons/donut.png", iconname: "Donuts"),
    const MyTab(iconPath: "lib/icons/burger.png", iconname: "Burger"),
    const MyTab(iconPath: "lib/icons/smoothie.png", iconname: "Smoothie"),
    const MyTab(iconPath: "lib/icons/pancakes.png", iconname: "Pancake"),
    const MyTab(iconPath: "lib/icons/pizza.png", iconname: "Pizza"),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 60, // Reducir la altura del AppBar para dar más espacio a las pestañas
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Icon(Icons.menu, color: Colors.grey[800]),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: Icon(Icons.person, color: Colors.grey),
            ),
          ],
        ),
        body: Column(
          children: [
            // Texto "I want to Eat"
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Text("I want to ", style: TextStyle(fontSize: 24)),
                  Text(
                    "Eat",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  ),
                ],
              ),
            ),
            // Tab Bar
            Center(
              child: TabBar(
                tabs: myTabs,
                isScrollable: true, // Permite que las pestañas se puedan desplazar si es necesario
                indicatorColor: Colors.pink, // Color del indicador de la pestaña seleccionada
              ),
            ),
            // Tab Bar view
            Expanded(
              child: TabBarView(
                children: [
                  DonutTab(),       // Contenido de la pestaña "Donuts"
                  const BurgerTab(), // Contenido de la pestaña "Burger"
                  const SmoothieTab(), // Contenido de la pestaña "Smoothie"
                  const PanCakeTab(), // Contenido de la pestaña "Pancake"
                  const PizzaTab(),  // Contenido de la pestaña "Pizza"
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
