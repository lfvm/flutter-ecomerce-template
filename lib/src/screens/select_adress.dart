import 'package:ecomerce_template/src/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../customs/custom_colors.dart';



class SelectAdressScreen extends StatelessWidget {
  const SelectAdressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select your Adress'),
      ),
      body: Column(
      
        children: [
      
          //Boton de agregar direccion
          Container(
            width: double.infinity,
            height: 36,
            margin: const EdgeInsets.all(16),
            child: const Center(child: Text("Add Adress")),
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
                
                if( index == 1){
                  return AdressContainer( isSelected: true,);
                }
                return AdressContainer();

              },  
              itemCount: 2,
            ),
          ),
      
          const SizedBox(height: 20),
          CustomButton(
            color: CustomColors.primary, 
            text: const Text("Continue"),
            onPressed: () {
              Navigator.pushNamed(context, 'select_payment');
            },
          ),
          const SizedBox(height: 20),

        
        
        ]
      
      
      ),
    );

  }
}


