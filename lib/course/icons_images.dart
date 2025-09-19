import 'package:b_app/course/go_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../config/utils/colors_list.dart';
import '../config/utils/images_list.dart';

class IconsImages extends StatefulWidget {
  const IconsImages({super.key});

  @override
  State<IconsImages> createState() => _IconsImagesState();
}

class _IconsImagesState extends State<IconsImages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Icon(Icons.star, color: Colors.black, size: 100),
          // Icon(Icons.heart_broken, color: Colors.red.shade800, size: 200),


          // Image.network(
          //   'https://poul3y.com/storage/media_images/mxU0OQyYoLdSeumwELlK1CwTtp9NfBRCIcHJgxCe.jpg',
          //   width: 300,
          // ),

      Container(
        width: 300,
        height: 200,
        color: Colors.red,
        // child: Image.asset('assets/female/female1.png', fit: BoxFit.cover,
        child: Image.asset(AppImages.manImg2, fit: BoxFit.cover,
        ),),
      // Container(
      //   width: 300,
      //   height: 200,
      //   decoration: BoxDecoration(
      //   color: MyColors.secondary,
      //   image: DecorationImage(image: AssetImage(MyImages.female1),
      //   // grey color filter 
      //   // colorFilter: ColorFilter.mode(Colors.grey, BlendMode.saturation),
      //   colorFilter: ColorFilter.mode(Colors.grey, BlendMode.saturation)
      //   )
      Container(
        height: 100,
        width: 200,
        // color: Colors.amber,
        color: AppColors.secondaryColor,
      ),

      //   ),
      //   child: Text("data")
      //   ),
      // E:\Drive 494\Flutter\Apps\b_app\assets\man1.png
      // assets\man1.png

          ElevatedButton(
            onPressed: () {
              // context.go('/home');
              context.go(AppRoutes.classList);
            },
            child: Text("Click Me to home"),
          ),

          // const Icon(
          //   Icons.home,
          //   color: Colors.blue,
          //   size: 50,
          // ),
          // const SizedBox(height: 20),
          // Image.network(
          //   'https://poul3y.com/storage/media_images/mxU0OQyYoLdSeumwELlK1CwTtp9NfBRCIcHJgxCe.jpg',
          //   width: 200,
          // ),
          // const SizedBox(height: 20),
          // Image.asset(
          //   'assets/images/sample_image.png',
          //   width: 200,
          // ),
        ],
      ),
    );
  }
}
