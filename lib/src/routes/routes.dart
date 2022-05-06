import 'package:ecomerce_template/src/screens/product_details.dart';
import 'package:ecomerce_template/src/screens/screens.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> appRoutes = {

  "home": (_) => HomeScreen(),
  "product_details": (_) => ProductDetailsScreen(),
  "select_adress": (_) => const SelectAdressScreen(),
  "select_payment": (_) =>  SelectPaymentScreen(),
  "edit_payment": (_) => EditPaymentScreen(),
  
};