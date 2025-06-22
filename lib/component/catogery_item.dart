
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
 const  Category({super.key,
    this.text,this.color,this.onTap
  });
 final  String? text;
 final  Color? color;
 final  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

      child: Container(
        padding: const EdgeInsets.only(left: 20),
        alignment: Alignment.centerLeft,
        width: double.infinity,
        height: 80,
        color: color,
        child:Text(text!,style: const TextStyle(
            fontSize: 25,
            color: Colors.white
        ),) ,
      ),
    );
  }
}
