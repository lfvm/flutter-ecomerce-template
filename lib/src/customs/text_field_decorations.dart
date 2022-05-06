import 'package:flutter/material.dart';
import 'custom_colors.dart';



class TextInputDecorations {


  static InputDecoration creditCardDecoration({

    required String labelText,
    String? hintText,

  }){
      
      return InputDecoration(

      labelText: labelText,
      labelStyle: const TextStyle(
        color: Colors.black,
        fontSize: 16,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
      ),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: CustomColors.primary,
          width: 2,
        ),
      ),
      hintText: hintText
    );
  }


}