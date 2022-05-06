import 'package:ecomerce_template/src/customs/custom_colors.dart';
import 'package:ecomerce_template/src/widgets/widgets.dart';
import 'package:flutter/material.dart';


class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text("My cart"),
        elevation: 0,
        backgroundColor: CustomColors.primary,
      ),  

      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (_, index ) => const CartProductContainer()
            ),
          ),

          const OrderCartButton()
        ],
      ),

    );
  }
}



