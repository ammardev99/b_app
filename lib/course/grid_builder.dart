
import 'package:b_app/config/model/option_model.dart';
import 'package:flutter/material.dart';

class GridBuilder extends StatelessWidget {
  const GridBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      // body: GridView.builder(
        // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
        // crossAxisSpacing: 10,
        // mainAxisSpacing: 10,
        // ),
        // itemCount: optionsList.length,
        // mainx space
        // itemBuilder: (context, index) {
          // return optionCard(optionsList[index]);
        // },
      // ),

//            GridView.builder(
//               physics: const NeverScrollableScrollPhysics(),
//               itemCount: estimateOption.length,
//               shrinkWrap: true,
//               gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
//                 maxCrossAxisExtent: 250,
//                 crossAxisSpacing: 10,
//                 mainAxisSpacing: 10,
//               ),
//               itemBuilder:
//                   (context, index) => estimateOptionCard(estimateOption[index]),
//             ),

      body: GridView.builder(
        padding: EdgeInsets.all(12),
        itemCount: optionsList.length,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 150,
          mainAxisExtent: 100,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          ),
        itemBuilder: (context, index) {
          return optionCard(optionsList[index]);
        },)

      );
  }
}

