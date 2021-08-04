import 'package:flutter/material.dart';
import 'package:socios_app/utils/consts.dart';

import 'item_menu_home.dart';

class MenuHome extends StatelessWidget {
  const MenuHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ItemMenuHome(
                  title: "Tus Ventas",
                  imagen: 'assets/img/graphics_scale.png',
                  color: Colors.green),
              ItemMenuHome(
                  title: "Tu Sueldo",
                  imagen: 'assets/img/money_menu.png',
                  color: Colors.orange),
              ItemMenuHome(
                  title: "Tus Avances",
                  imagen: 'assets/img/money_menu.png',
                  color: Colors.blue),
              ItemMenuHome(
                  title: "Tus Ventas",
                  imagen: 'assets/img/graphics_scale.png',
                  color: Colors.green),
              ItemMenuHome(
                  title: "Tu Sueldo",
                  imagen: 'assets/img/money_menu.png',
                  color: Colors.orange),
              ItemMenuHome(
                  title: "Tus Avances",
                  imagen: 'assets/img/money_menu.png',
                  color: Colors.blue),
              ItemMenuHome(
                  title: "Tus Ventas",
                  imagen: 'assets/img/graphics_scale.png',
                  color: Colors.green),
              ItemMenuHome(
                  title: "Tu Sueldo",
                  imagen: 'assets/img/money_menu.png',
                  color: Colors.orange),
              ItemMenuHome(
                  title: "Tus Avances",
                  imagen: 'assets/img/money_menu.png',
                  color: Colors.blue)
            ],
          
        ));
  }
}
