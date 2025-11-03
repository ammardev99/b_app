import 'package:b_app/course/nested_paging.dart/tabs/tab_t1.dart';
import 'package:b_app/course/nested_paging.dart/tabs/tab_t2.dart';
import 'package:b_app/course/nested_paging.dart/tabs/tab_t3.dart';
import 'package:flutter/material.dart';

class PageP2 extends StatefulWidget {
  const PageP2({super.key});

  @override
  State<PageP2> createState() => _PageP2State();
}

class _PageP2State extends State<PageP2> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    // ✅ Match TabController length with the number of tabs (3)
    _tabController = TabController(length: 3, vsync: this);
    _pageController = PageController();

    // ✅ Keep TabBar and PageView synced
    _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
        _pageController.jumpToPage(_tabController.index);
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  // ✅ Your tab widgets
  final myTabs = const [
    Tabt1(),
    Tabt2(),
    Tabt3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        // bottom: TabBar(
        //   controller: _tabController,
        //   isScrollable: true,
        //   labelColor: Colors.white,
        //   unselectedLabelColor: Colors.white70,
        //   indicatorColor: Colors.yellow,
        //   tabs: const [
        //     Tab(text: "TabT1"),
        //     Tab(text: "TabT2"),
        //     Tab(text: "TabT3"),
        //   ],
        // ),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          _tabController.animateTo(index);
        },
        children: myTabs,
      ),
    );
  }
}
