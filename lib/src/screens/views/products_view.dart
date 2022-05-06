import 'package:ecomerce_template/src/widgets/widgets.dart';
import 'package:flutter/material.dart';


class ProductsView extends StatelessWidget {
  const ProductsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: ListView(
    
          children: [
    
              SearchBar(),
    
              GridView.count(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 2,
              childAspectRatio: 180 / 301,
              children: const [
                ProductContainer(),
                ProductContainer(),
                ProductContainer(),
                ProductContainer(),
                ProductContainer(),
                ProductContainer(),
                ProductContainer(),
          
                ProductContainer(),
          
              ],
        
            ),
          ]
        ),
    );
  }
}