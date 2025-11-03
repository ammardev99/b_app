import 'package:flutter/material.dart';
import 'package:b_app/course/nested_paging.dart/tabs/tab_t1.dart';
import 'package:b_app/course/nested_paging.dart/tabs/tab_t2.dart';
import 'package:b_app/course/nested_paging.dart/tabs/tab_t3.dart';

class MyTabBarScreen extends StatefulWidget {
  const MyTabBarScreen({super.key});

  @override
  State<MyTabBarScreen> createState() => _MyTabBarScreenState();
}

class _MyTabBarScreenState extends State<MyTabBarScreen> with TickerProviderStateMixin {
  late TabController _tabController;

  int currentTab = 1;

  final List<Widget> myTabs = const [
    Tabt1(),
    Tabt2(),
    Tabt3(),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: myTabs.length,
      vsync: this, // ✅ Correct vsync provider
      initialIndex: currentTab,
    );

    _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
        setState(() {
          currentTab = _tabController.index;
        });
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Tab Bar View main page 2'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: "TabT1"),
            Tab(text: "TabT2"),
            Tab(text: "TabT3"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: myTabs,
      ),
    );
  }
}
