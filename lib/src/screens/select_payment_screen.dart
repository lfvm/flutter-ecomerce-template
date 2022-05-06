import 'package:ecomerce_template/src/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../customs/custom_colors.dart';


class SelectPaymentScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select your payment method'),
      ),
      body: Column(
      
        children: [
      
          //Boton de agregar direccion
          Container(
            width: double.infinity,
            height: 36,
            margin: const EdgeInsets.all(16),
            child: const Center(child: Text("Add Payment method")),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: CustomColors.secondary),
            ),
      
          ),
      
          Expanded(
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (_,index) {
                return CreditCardContainer();
              },  
              itemCount: 2,
            ),
          ),
      
          const SizedBox(height: 20),
          CustomButton(
            color: CustomColors.primary, 
            text: const Text("FINISH PAYMENT"),
            onPressed: () {
            },
          ),
          const SizedBox(height: 20),

        
        
        ]
      
      
      ),
   );
  }
}