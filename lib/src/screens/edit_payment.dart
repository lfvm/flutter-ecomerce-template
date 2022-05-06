import 'package:ecomerce_template/src/customs/custom_colors.dart';
import 'package:ecomerce_template/src/widgets/inputs/custom_button.dart';
import 'package:ecomerce_template/src/widgets/nav/custom_nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

import '../customs/text_field_decorations.dart';
import '../widgets/forms/edit_card_form.dart';


class EditPaymentScreen extends StatefulWidget {

  

  @override
  State<EditPaymentScreen> createState() => _EditPaymentScreenState();
}

class _EditPaymentScreenState extends State<EditPaymentScreen> {

  late  GlobalKey<FormState> formKey;
  @override
  void initState() {
    super.initState();
    formKey = GlobalKey<FormState>();
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(

      appBar: AppBar(
        elevation: 0,
        backgroundColor: CustomColors.primary,
        title: const Text("Edit your card"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: [
                
                const SizedBox( height: 32,),

                
                CreditCardWidget(
                  cardNumber: "455274344234",
                  cardBgColor: CustomColors.primary,
                  expiryDate: "12/24", 
                  cardHolderName: "fernando valdeon",
                  cvvCode: "389",
                  showBackView: false, 
                  onCreditCardWidgetChange: (creditCardBrand) { 
                    
                  }, 
          
                ),
          
                const SizedBox( height: 32,),
          
                const EditCardForm(),
                
                
              
              ],
          
              
            ),
          ),


          Container(
            margin: const EdgeInsets.symmetric(vertical: 32),
            child: CustomButton(
              color: CustomColors.primary, 
              text: const Text("SAVE")
            ),
          )      
        ],
      ),
    );
  }
}

