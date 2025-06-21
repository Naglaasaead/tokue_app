import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../component/catogery_item.dart';
import 'number_bage.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text("Tokue",style: TextStyle(
          color: Colors.white
        ),),
      ),
      body: Column(
        children: [
          Category(text: 'Number',color: Colors.orange,
          onTap: () {
            Navigator.push(context, 
            MaterialPageRoute(builder: (context) {
             return  NumberPage();
            },));
          },),
          Category(text: 'Family Member',color: Colors.green,),

          Category(text: 'Colors',color: Colors.purpleAccent,),

          Category(text: 'Phrases',color: Colors.lightBlueAccent,),

        ],
      ),
      
    );
  }
}
