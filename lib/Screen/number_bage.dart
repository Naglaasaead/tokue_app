import 'package:flutter/material.dart';

import '../component/itemNumber.dart';
import '../models/numbers.dart';

class NumberPage extends StatelessWidget {
  NumberPage({super.key});
 //Numbers one=Numbers(image: 'assets/images/numbers/number_one.png', JBName: 'ichi', enName: 'one');
 final  List<Numbers> number=[
    Numbers(image: 'assets/images/numbers/number_one.png', JBName: 'ichi', enName: 'one',sound: "sounds/numbers/number_one_sound.mp3"),
    Numbers(image: 'assets/images/numbers/number_two.png', JBName: 'ni', enName: 'Two',sound: "sounds/numbers/number_two_sound.mp3"),
    Numbers(image: 'assets/images/numbers/number_three.png', JBName: 'san', enName: 'Three',sound: "sounds/numbers/number_three_sound.mp3"),
    Numbers(image: 'assets/images/numbers/number_four.png', JBName: 'yon', enName: 'Four',sound: "sounds/numbers/number_four_sound.mp3"),
    Numbers(image: 'assets/images/numbers/number_five.png', JBName: 'go', enName: 'Five',sound: "sounds/numbers/number_five_sound.mp3"),
    Numbers(image: 'assets/images/numbers/number_six.png', JBName: 'roku', enName: 'Six',sound: "sounds/numbers/number_six_sound.mp3"),
    Numbers(image: 'assets/images/numbers/number_seven.png', JBName: 'nana', enName: 'Seven',sound: "sounds/numbers/number_seven_sound.mp3"),
    Numbers(image: 'assets/images/numbers/number_eight.png', JBName: 'hachi', enName: 'Eight',sound: "sounds/numbers/number_eight_sound.mp3"),
    Numbers(image: 'assets/images/numbers/number_nine.png', JBName: 'kyuu', enName: 'nine',sound: "sounds/numbers/number_nine_sound.mp3"),
    Numbers(image: 'assets/images/numbers/number_ten.png', JBName: 'juu', enName: 'Ten',sound: "sounds/numbers/number_ten_sound.mp3"),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text("Number",style: TextStyle(
          color: Colors.white
        ),),

      ),
      body:
//       ListView(
//         children: getList(number),
// //         children:[
// //           // ItemNumber(number: number[0],),
// //           // ItemNumber( number: number[1],),
// //           // ItemNumber( number: number[2],),
// //           // ItemNumber( number: number[3],),
// //           // ItemNumber( number: number[4],),
// //           // ItemNumber( number: number[5],),
// //           // ItemNumber( number: number[6],),
// //           // ItemNumber( number: number[7],),
// //           // ItemNumber( number: number[8],),
// //           // ItemNumber( number: number[9],),
// //         //getList(number)
// // ],
//

    ListView.builder(
      itemCount: number.length,
      itemBuilder: (context, index) {

      print(number[index]);
      return ItemNumber(number: number[index]);
    },),

    );
  }
  // List<Widget> getList(List<Numbers> number){
  //   List<Widget> itemList=[];
  //   for(int i=0;i<number.length;i++){
  //     itemList.add(ItemNumber(number: number[i]));
  //   }
  //   return itemList;
  // }
}
