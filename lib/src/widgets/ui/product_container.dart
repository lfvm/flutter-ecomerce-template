import 'package:ecomerce_template/src/customs/custom_fonts.dart';
import 'package:flutter/material.dart';




class ProductContainer extends StatelessWidget {
  const ProductContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, 'product_details'),
      child: Container(
        margin: const EdgeInsets.all(16),
        width: 180,
        height: 301,
        decoration: _buildDecoration(),
    
        child: Column(
        
    
          crossAxisAlignment: CrossAxisAlignment.start,
    
          children: [
    
            //Imagen 
            ClipRRect(
              child: Image.asset(
                'assets/no-image.png',
                fit: BoxFit.cover,
              ),
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            ),
    
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "Product name",
                style: CustomFonts.productCardTitle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:10),
              child: Text(
                "Product description",
                style: CustomFonts.paragraph,
              ),
            ),
    
            const SizedBox(height: 16,),
    
            Padding(
              padding: const EdgeInsets.only(left:10),
              child: Text(
                "\$ 159.00",
                style: CustomFonts.priceTag,
              ),
            ),
           
          ]
        ),
    
      ),
    );

  }

  _buildDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: const [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 10,
          spreadRadius: 5,
          offset: Offset(0, 10),
        ),
      ],
    );
  }
}