import 'package:ecomerce_template/src/customs/custom_fonts.dart';
import 'package:ecomerce_template/src/widgets/widgets.dart';
import 'package:flutter/material.dart';



class CartProductContainer extends StatelessWidget {
  const CartProductContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390,
      height: 163,
      color: Colors.white,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            margin: const EdgeInsets.all(10),
            width: 100,
            height: 133,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset('assets/no-image.png', fit: BoxFit.cover,),
            ),
          ), 

          Container(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Product Name' ,style: CustomFonts.productTitle,),
                const AddAmmountButton(small: true),
                Text('\$ 159.00' ,style: CustomFonts.priceTag,),
              ],
            ),
          ),

        ],

      ),
    );
  }
}