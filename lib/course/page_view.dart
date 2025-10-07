import 'package:flutter/material.dart';

class MyPageView extends StatefulWidget {
  const MyPageView({super.key});

  @override
  State<MyPageView> createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
    _pageController = PageController();

    // Sync PageView ↔ TabBar
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tab + Page View"),
        
        bottom:
         TabBar(
          controller: _tabController,
          isScrollable: true,
          labelColor: Colors.green,
          unselectedLabelColor: Colors.grey,
          indicatorColor: Colors.yellow,
          tabs: const [
            Tab(text: "Page 1"),
            Tab(text: "Page 2"),
            Tab(text: "Page 3"),
            Tab(text: "Page 4"),
            Tab(text: "Page 5"),
          ],
        ),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          _tabController.animateTo(index);
        },
        children: [
          onboard("Page 1"),
          onboard("Page 2", clr: Colors.green),
          onboard("Page 3", clr: Colors.blue),
          onboard("Page 4", clr: Colors.orange),
          onboard("Page 5", clr: Colors.purple),
        ],
      ),
    );
  }

  // Custom widget for pages
  Widget onboard(String title, {Color clr = Colors.red}) {
    return Container(
      color: clr,
      child: Center(
        child: Text(
          title,
          style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}


Widget onboard(String txt, {Color? clr}) {
  return Container(
    color: clr ?? Colors.red,
    child: Center(
      child: Text(txt, style: TextStyle(fontSize: 40, color: Colors.white)),
    ),
  );
}
