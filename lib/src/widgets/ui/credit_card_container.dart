import 'package:ecomerce_template/src/customs/custom_colors.dart';
import 'package:ecomerce_template/src/customs/custom_fonts.dart';
import 'package:flutter/material.dart';


 class CreditCardContainer extends StatelessWidget {
   const CreditCardContainer({Key? key}) : super(key: key);
 
   @override
   Widget build(BuildContext context) {

     return Container(

      width: 370,
      height: 62,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: _buildDecoration(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  [

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.credit_card, color: CustomColors.primary, size: 24,),
              ),

              Text("Credit",style: CustomFonts.paragraph ,),
            ],
          ),

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('**** 3234', style: CustomFonts.paragraph,),
              ),

              const _EditButtons(),
            ],
          ),

        ],
      ),
     );
   }

   BoxDecoration _buildDecoration() {
     return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 4,
          offset: const Offset(0, 2),
        ),
      ],
    );
   }
 }


 class _EditButtons extends StatelessWidget {
  const _EditButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        
        Container(
          width: 36,
          height: 36,
          decoration: _buildDecoration(CustomColors.terciary),
          child: IconButton(
            icon: const Icon(Icons.edit_outlined, size: 18,), 
            onPressed: (){
              Navigator.pushNamed(context, 'edit_payment');
            }
          ),
        ),
        const SizedBox( width: 8),
        Container(
          width: 36,
          height: 36,
          decoration: _buildDecoration(CustomColors.danger),
          child: IconButton(
            icon: const Icon(Icons.delete_outline, size: 18,), 
            onPressed: (){}
          ),
        ),
        const SizedBox( width: 16,),
      ],
    );
  }

  BoxDecoration _buildDecoration(Color color) {
    return BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: color
        );
  }
}