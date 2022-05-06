import 'package:ecomerce_template/src/customs/custom_colors.dart';
import 'package:ecomerce_template/src/customs/custom_fonts.dart';
import 'package:ecomerce_template/src/widgets/widgets.dart';
import 'package:flutter/material.dart';


class ProductDetailsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        children:  [

          Image.asset(
            'assets/no-image.png',
            height: MediaQuery.of(context).size.height * 0.35,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          
          const SizedBox(height: 32,),
          // Detalles del producto
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text("Product Name", style: CustomFonts.productTitle),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text("\$ 159.00", style: CustomFonts.priceTag),
          ),

          Padding(
            padding: const EdgeInsets.all(16),
            child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do.", style: CustomFonts.paragraph),
          ),

          const SizedBox( height: 32,),

          const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16),
            child: AddAmmountButton(small: false,),
          ),

          const SizedBox( height: 32,),

          CustomButton(
            color: CustomColors.primary,
            text: const Text("BUY"),
          ),

          const SizedBox( height: 16,),

          CustomButton(
            color: CustomColors.terciary,
            text: const Text("ADD TO CART" ,style: TextStyle(color: Color(0xff2D6A4F),)),
          ),




        ]
     ),
   );
  }
}