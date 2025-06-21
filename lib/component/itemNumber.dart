
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/numbers.dart';

class ItemNumber extends StatefulWidget {
  const ItemNumber({
    super.key,
     required this.number,
  });

  final Numbers number;

  @override
  State<ItemNumber> createState() => _ItemNumberState();
}

class _ItemNumberState extends State<ItemNumber> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,

      color: Colors.orange,
      child: Row(
        children: [
          Container(
              color: Color(0xfff1e5d8),
              child: Image.asset(widget.number.image,width: 90,height: 90,)),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text(widget.number.JBName,style: TextStyle(
                    color: Colors.white,fontSize: 18
                ),),
                Text(widget.number.enName,style: TextStyle(
                    color: Colors.white,fontSize: 18
                ),)
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(onPressed: () async{
              final player = AudioPlayer();
              player.setSource(
                 await AssetSource(
                      'assets/sounds/numbers/number_one_sound.mp3'));
              }, icon: Icon(
                Icons.play_arrow,color: Colors.white
            )),
          )
        ],
      ),
    );
  }
}
