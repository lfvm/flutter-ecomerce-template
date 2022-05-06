import 'package:ecomerce_template/src/customs/custom_colors.dart';
import 'package:flutter/material.dart';



class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      width: double.infinity,
      height: 50,
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search, color: CustomColors.primary,),
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          hintText: "Search",
          focusedBorder: OutlineInputBorder(
            borderSide:  BorderSide(color: CustomColors.primary, width: 0.0),
            borderRadius: BorderRadius.circular(12)
          ),
        ),
        cursorColor: CustomColors.primary,
      ),
      

    );
  }
}