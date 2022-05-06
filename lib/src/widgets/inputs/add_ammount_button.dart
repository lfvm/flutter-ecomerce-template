import 'package:flutter/material.dart';


class AddAmmountButton extends StatelessWidget {

  final bool small;
  const AddAmmountButton({Key? key, required this.small}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(


      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _HelperButton(icon: Icons.remove, small: small,),
          _AmmountBox(small: small,),
          _HelperButton(icon: Icons.add, small: small,),

        ],

      ),

    );
  }
}


class _AmmountBox extends StatelessWidget {
  final bool small;
  const _AmmountBox({Key? key, required this.small}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      width:  !small? 240 : 125,
      height: !small?  41 : 19,
      margin: const EdgeInsets.symmetric(horizontal: 10),

      decoration: const BoxDecoration(
        color: Color(0xffF5F5F5),
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Padding(
            padding: !small ? const EdgeInsets.all(8.0) : const EdgeInsets.all(2),
            child: Text("Ammount", style: TextStyle(fontSize: !small ? 16 : 10, color: const Color(0xff6F6F6F),fontWeight: FontWeight.w400)),
          ),
          Padding(
            padding: !small ? const EdgeInsets.all(8.0) : const EdgeInsets.all(2),
            child: Text("2", style: TextStyle(fontSize: !small ? 16 : 10, color:const Color(0xff6F6F6F), fontWeight: FontWeight.w400)),
          ),
  
        ],
      ),
    );
  }
}


class _HelperButton extends StatelessWidget {
  final bool small;
  final IconData icon;
  const _HelperButton({Key? key, required this.icon, required this.small}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:  !small ? 40 : 20,
      height: !small ? 40 : 20,
      decoration: const BoxDecoration(
        color: Color(0xffF5F5F5),
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      child: Center(
        child: Icon(icon, color: Colors.black, size: !small ? 20 : 10),
      ),

    );
  }
}