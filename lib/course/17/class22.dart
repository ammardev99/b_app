import 'package:b_app/widgets/formatting.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Class22 extends StatefulWidget {
  const Class22({super.key});

  @override
  State<Class22> createState() => _Class22State();
}

class _Class22State extends State<Class22> {
  List<DropdownMenuItem<String>> fruitList = [
    DropdownMenuItem(value: "0", child: Text("mango")),
    DropdownMenuItem(value: "1", child: Text("Banana")),
    DropdownMenuItem(value: "2", child: Text("Orange")),
    DropdownMenuItem(value: "3", child: Text("Grapes")),
  ];

  // selected Fruit
  String? selectedFruit;
  RangeValues ageRange = RangeValues(20000, 30000);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        semanticsLabel: "data",
        onRefresh: () async {
          await Future.delayed(Duration(seconds: 2));
        },
        strokeWidth: 5,
        color: Colors.green,

        child: Column(
          children: [
            Text(
              "ageRange: ${ageRange.start.round()} to ${ageRange.end.round()}",
            ),
            RangeSlider(
              min: 10000,
              max: 100000,
              values: ageRange,
              onChanged: (value) {
                setState(() {
                  ageRange = value;
                });
              },
            ),
            // Container(
            //   padding: EdgeInsets.all(20),
            //   height: 200,
            //   width: double.infinity,
            //   color: Colors.red,
            //   child: Align(alignment: Alignment.center, child: Text("data")),
            // ),
            DropdownButton(
              items: fruitList,
              onChanged: (value) {
                setState(() {
                  selectedFruit = value;
                });
              },
            ),

            DropdownMenu(
              initialSelection: "0",
              dropdownMenuEntries: [
                DropdownMenuEntry(value: '0', label: 'Select an option'),
                DropdownMenuEntry(value: '1', label: 'One'),
                DropdownMenuEntry(value: '2', label: 'Two'),
                DropdownMenuEntry(value: '3', label: 'Three'),
              ],
            ),

            // DropdownMenu(
            //   initialSelection: '1',
            //   dropdownMenuEntries: [
            //     DropdownMenuEntry(value: '1', label: 'One'),
            //     DropdownMenuEntry(value: '2', label: 'Two'),
            //     DropdownMenuEntry(value: '3', label: 'Three'),
            //   ],
            // ),
            gapBox(50),

            // ExpansionTile(
            // title: Text("data"),
            // children: [
            // ListTile(
            // contentPadding: EdgeInsets.all(20),
            // subtitle: Text(
            // "data xegvbjhnk fy ghbjmygubjh  bjk fdvc f ghjkmn bjm ghjk data xegvbjhnk fy ghbjmygubjh  bjk fdvc f ghjkmn bjm ghjk",
            // maxLines: 3,
            // overflow: TextOverflow.ellipsis,
            // ),
            // ),
            // ],
            // ),

            // SizedBox(
            //   width: 150,
            //   child: RangeSlider(
            //     labels: RangeLabels(
            //       ageRange.start.round().toString(),
            //       ageRange.end.round().toString(),),
            //     semanticFormatterCallback: (value) {
            //       return "${value.round()} years"; },
            //     values: ageRange,
            //     onChanged: (va) {
            //       setState(() {
            //         ageRange = va;
            //       });},
            //     min: 0,
            //     max: 100,),
            // ),
            gapBox(50),
            TextButton(
              onPressed: () {
                // Snackbars
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("data"),
                    backgroundColor: Colors.red,

                    margin: EdgeInsets.all(10),
                  ),
                );
                // Tost bar
                // Fluttertoast.showToast(
                //   msg: "data",
                //   backgroundColor: Colors.red,
                //   textColor: Colors.white,
                //   gravity: ToastGravity.BOTTOM,
                //   toastLength: Toast.LENGTH_LONG,
                // );
              },
              child: Text("data"),
            ),
            gapBox(50),
            Container(
              // media query
              height: 100,
              width: MediaQuery.of(context).size.width * 0.9,
              color: Colors.red,
              child: Align(
                alignment: Alignment.center,
                child: Text("data", style: TextStyle(color: Colors.white)),
              ),
            ),
            gapBox(50),

            SmoothPageIndicator(
              controller: PageController(initialPage: 0),
              // PageController
              count: 2,
            ),
            gapBox(50),
            positionIndicator(2),
          ],
        ),
      ),
    );
  }
}

Widget positionIndicator(int index) {
  return Container(
    color: Colors.grey.shade500,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        customCont(index == 1 ? true : false),
        gapBox(5, 5),
        customCont(index == 2 ? true : false),
        gapBox(5, 5),
        customCont(index == 3 ? true : false),
      ],
    ),
  );
}

Widget customCont(bool isActive) {
  return Container(
    height: 10,
    width: isActive ? 100 : 100,
    decoration: BoxDecoration(
      color: isActive ? Colors.red : Colors.grey,
      borderRadius: BorderRadius.circular(10),
    ),
  );
}
