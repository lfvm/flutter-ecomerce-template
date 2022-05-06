import 'package:flutter/material.dart';



class CustomButton extends StatelessWidget {

  final Color color;
  final Text text;
  Function? onPressed;
  CustomButton({Key? key, required this.color, required this.text, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        onPressed: () {
          onPressed?.call();
        },
        child: text,
      ),
    );
  }
}