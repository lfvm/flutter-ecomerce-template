import 'package:flutter/material.dart';

import '../../customs/text_field_decorations.dart';

class EditCardForm extends StatelessWidget {
  const EditCardForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children:  [
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: TextInputDecorations.creditCardDecoration(
                labelText: "Card Number",
                hintText: "XXXX-XXXX-XXXX-XXXX",
              ),
              keyboardType: TextInputType.number,
              style: const TextStyle(
                fontSize: 16,
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your card number';
                }
                return null;
              },
            ),
          ),  
          
          const SizedBox(height: 16),
      
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: TextInputDecorations.creditCardDecoration(
                labelText: "Expiry Date",
                hintText: "MM/YY",
              ),
              keyboardType: TextInputType.number,
              style: const TextStyle(
                fontSize: 16,
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your card number';
                }
                return null;
              },
            ),
          ),
          
          const SizedBox( height: 16,),
          
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: TextInputDecorations.creditCardDecoration(
                labelText: "Cardholder Name",
                hintText: "Correy Schafer",
              ),
              keyboardType: TextInputType.number,
              style: const TextStyle(
                fontSize: 16,
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your card number';
                }
                return null;
              },
            ),
          ),
       
        ],
      ),
    );
  }
}