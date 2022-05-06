import 'package:ecomerce_template/src/customs/custom_colors.dart';
import 'package:ecomerce_template/src/providers/bottom_nav_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';




class CustomBottomNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    final navigationProvider = Provider.of<BottomNavProvider>(context);
    final index = navigationProvider.currentIndex;

    return BottomNavigationBar(
      onTap: (i) => navigationProvider.currentIndex = i,
      elevation: 0,
      currentIndex: index, //Esta variable se encarga de controlar la opcion seleccionada de la navegacion

      items: const[
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.white), 
          label:'Products'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart, 
          color: Colors.white,),label: "Cart"
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle, color: Colors.white,),
          label: "Account"
        ),
      ],

      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.white,


      backgroundColor: CustomColors.primary,
    );
  }
}