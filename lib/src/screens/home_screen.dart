import 'package:ecomerce_template/src/providers/bottom_nav_provider.dart';
import 'package:ecomerce_template/src/screens/views/account_view.dart';
import 'package:ecomerce_template/src/screens/views/cart_view.dart';
import 'package:ecomerce_template/src/screens/views/products_view.dart';
import 'package:ecomerce_template/src/widgets/nav/custom_nav.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

     
      body: const _HomePageBody(),
     bottomNavigationBar: CustomBottomNav(),
   );
  }
}




class _HomePageBody extends StatelessWidget {
  const _HomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Obtener el provedor de informacion del navigation bar
    final navProvider = Provider.of<BottomNavProvider>(context);
    final currentIndex = navProvider.currentIndex;

    switch (currentIndex) {
      case 0:
        return const ProductsView();
      case 1:
        return const CartView();
      case 2:
        return const AccountView();
      default:
        return const ProductsView();
    }
  }
}