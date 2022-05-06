import 'package:ecomerce_template/src/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../../customs/custom_fonts.dart';

class OrderCartButton extends StatelessWidget {
  const OrderCartButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {



    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(25),
        topRight: Radius.circular(25),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        width: double.maxFinite,
        height: 155,
        color: Colors.white,
        child: Column(
    
          children: [
    
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text("TOTAL", style: CustomFonts.productTitle,),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text("\$ 1059.00", style: CustomFonts.priceTag,),
                ),
              ],
            ),
    
            const SizedBox(height: 10,),
    
            CustomButton(
              color: const Color(0xff52B788), 
              text: const Text("BUY"),
              onPressed: () {
                Navigator.of(context).pushNamed("select_adress");
              },
            )
    
          ],
    
        ),
      ),
    );
  }
}



