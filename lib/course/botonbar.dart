import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:b_app/course/container.dart';
import 'package:b_app/course/icons_images.dart';
import 'package:b_app/course/stack_class.dart';
import 'package:flutter/material.dart';

class BottonBarClass extends StatefulWidget {
  const BottonBarClass({super.key});

  @override
  State<BottonBarClass> createState() => _BottonBarClassState();
}

class _BottonBarClassState extends State<BottonBarClass> {
  int _pageIndex = 0;
  final PageController _pageController = PageController(initialPage: 0);

  // NotchBottomBarController
  final NotchBottomBarController _controller = NotchBottomBarController(index: 0);

  final List<Widget> _pages = const [

    // Text("Ab 0"),
    // Text("Ab 1"),
    // Text("Ab 2"),
    ContainerClass(),
    IconsImages(),
    StackClass(),
// 


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() => _pageIndex = index);
        },
        children: _pages,
      ),
      bottomNavigationBar: AnimatedNotchBottomBar(
        notchBottomBarController: _controller,
        color: _pageIndex == 2? Colors.amber : _pageIndex == 0? Colors.pink : Colors.green,
        shadowElevation: 2,
        kIconSize: 24,
        kBottomRadius: 0,
        notchColor: _pageIndex == 2? Colors.amber : _pageIndex == 0? Colors.pink : Colors.green,
        bottomBarItems: const [
          BottomBarItem(
            inActiveItem: Icon(Icons.star_border, color: Colors.blueGrey),
            activeItem: Icon(Icons.star, color: Colors.white),
            itemLabel: 'Container',
          ),
          BottomBarItem(
            inActiveItem: Icon(Icons.home_outlined, color: Colors.blueGrey),
            activeItem: Icon(Icons.home, color: Colors.white),
            itemLabel: 'Icons',
          ),
          BottomBarItem(
            inActiveItem: Icon(Icons.list, color: Colors.blueGrey),
            activeItem: Icon(Icons.list_alt, color: Colors.white),
            itemLabel: 'stacked',
          ),
        ],

        onTap: (index) {
          setState(() {
            _pageIndex = index;
          });
          _pageController.jumpToPage(index);
        },
      ),
    );
  }
}



































// ****************************************







// import 'package:flutter/material.dart';
// import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';

// class BottonBarClass extends StatefulWidget {
//   const BottonBarClass({super.key});

//   @override
//   State<BottonBarClass> createState() => _BottonBarClassState();
// }

// class _BottonBarClassState extends State<BottonBarClass> {
//   /// Controller to handle PageView and also handles initial page
//   final _pageController = PageController(initialPage: 0);
//   /// Controller to handle bottom nav bar and also handles initial page
//   final NotchBottomBarController _controller = NotchBottomBarController(index: 0);
// int maxCount = 5;

// int _pageIndex = 0;

// final 


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(child: Text("Page $_pageIndex", style: TextStyle(fontSize: 48),)),
//       // bottomNavigationBar: ,


//     );
//   }
// }


// // import 'package:flutter/material.dart';

// // class BottonBarClass extends StatefulWidget {
// //   const BottonBarClass({super.key});

// //   @override
// //   State<BottonBarClass> createState() => _BottonBarClassState();
// // }

// // class _BottonBarClassState extends State<BottonBarClass> {
// //   int _pageIndex = 0;
// //   final PageController _pageController = PageController();

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Center(child: Text(_pageIndex.toString(), style: TextStyle(fontSize: 48),)),
// //       bottomNavigationBar: CustomBottomNavBar(
// //         selectedIndex: _pageIndex,
// //         onTabSelected: (index) {
// //           setState(() => _pageIndex = index);
// //           _pageController.jumpToPage(index);
// //         },
// //       ),
// //     );
// //   }
// // }

// // class CustomBottomNavBar extends StatelessWidget {
// //   final int selectedIndex;
// //   final Function(int) onTabSelected;

// //   const CustomBottomNavBar({
// //     super.key,
// //     required this.selectedIndex,
// //     required this.onTabSelected,
// //   });

// //   @override
// //   Widget build(BuildContext context) {
// //     return BottomNavigationBar(
// //       currentIndex: selectedIndex,
// //       onTap: onTabSelected,
// //       backgroundColor: Colors.white,
// //       selectedItemColor: const Color(0xff0D66B7),
// //       unselectedItemColor: const Color.fromARGB(255, 244, 172, 124),
// //       showUnselectedLabels: true,
// //       type: BottomNavigationBarType.fixed,
// //       items: const [
// //         BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: 'Home'),
// //         BottomNavigationBarItem(icon: Icon(Icons.book), label: 'My Bookings'),
// //         BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Messages'),
// //         BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
// //       ],
// //     );
// //   }
// // }
