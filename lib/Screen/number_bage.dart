import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../component/itemNumber.dart';
import '../models/numbers.dart';

class NumberPage extends StatelessWidget {
  NumberPage({super.key});
 //Numbers one=Numbers(image: 'assets/images/numbers/number_one.png', JBName: 'ichi', enName: 'one');
  List<Numbers> number=[
    Numbers(image: 'assets/images/numbers/number_one.png', JBName: 'ichi', enName: 'one'),
    Numbers(image: 'assets/images/numbers/number_two.png', JBName: 'ni', enName: 'Two'),
    Numbers(image: 'assets/images/numbers/number_three.png', JBName: 'san', enName: 'Three'),
    Numbers(image: 'assets/images/numbers/number_four.png', JBName: 'yon', enName: 'Four'),
    Numbers(image: 'assets/images/numbers/number_five.png', JBName: 'go', enName: 'Five'),
    Numbers(image: 'assets/images/numbers/number_six.png', JBName: 'roku', enName: 'Six'),
    Numbers(image: 'assets/images/numbers/number_seven.png', JBName: 'nana', enName: 'Seven'),
    Numbers(image: 'assets/images/numbers/number_eight.png', JBName: 'hachi', enName: 'Eight'),
    Numbers(image: 'assets/images/numbers/number_nine.png', JBName: 'kyuu', enName: 'nine'),
    Numbers(image: 'assets/images/numbers/number_ten.png', JBName: 'juu', enName: 'Ten'),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text("Number",style: TextStyle(
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
