import 'package:ecomerce_template/src/customs/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class CustomFonts {



  static TextStyle title = GoogleFonts.roboto(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );

  
  
  static TextStyle subTitle = GoogleFonts.roboto(
    fontSize: 17,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );



  static TextStyle productCardTitle = GoogleFonts.roboto(
    fontSize: 17,
    color: CustomColors.secondary,
  );


  static TextStyle paragraph = GoogleFonts.roboto(
    fontSize: 14,
    color: CustomColors.letterColor2,
  );




  static TextStyle priceTag = GoogleFonts.roboto(
    fontSize: 22,
    color: Colors.black
  );

   static TextStyle productTitle = GoogleFonts.roboto(
    fontSize: 24,
    color: CustomColors.primary,
    fontWeight: FontWeight.w500,
  );

}