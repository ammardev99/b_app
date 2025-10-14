// call: context.go(AppRoutes.home);
// app_routes.dart
import 'package:b_app/course/14/collections_dart.dart';
import 'package:b_app/course/botonbar.dart';
import 'package:b_app/course/buttons_functions.dart';
import 'package:b_app/course/custom_widget.dart';
import 'package:b_app/course/radio_checkbox.dart';
import 'package:b_app/course/my_lists_view.dart';
import 'package:b_app/course/class22.dart';
import 'package:b_app/course/classlist.dart';
import 'package:b_app/course/container.dart';
import 'package:b_app/course/form_class.dart';
import 'package:b_app/course/grid_builder.dart';
import 'package:b_app/course/icons_images.dart';
import 'package:b_app/course/listview.dart';
import 'package:b_app/course/nested_paging.dart/fram.dart';
import 'package:b_app/course/page_view.dart';
import 'package:b_app/course/picker_class.dart';
import 'package:b_app/course/richtext_class.dart';
import 'package:b_app/course/row_columns.dart';
import 'package:b_app/course/stack_class.dart';
import 'package:b_app/riverpod/counter_screen.dart';
import 'package:go_router/go_router.dart';

import '../pos/pos.dart';

class AppRoutes {
  static const String classList = '/';
  static const String rowColumns = '/RowColumns';
  static const String profile = '/profile/:username';
  static const String container = '/ContainerClass';
  static const String stackClass = '/StackClass';
  static const String iconsImages = '/IconsImages';
  static const String buttonsFunctions = '/ButtonsFunctions';
  static const String testRiverPod = '/TestRiverPod';
  static const String formClass = '/FormClass';
  static const String pos = '/POS';
  static const String listV = '/ListV';
  static const String richTextClass = '/RichTextClass';
  static const String class11 = '/Class11';
  static const String myListsView = '/MyListsView';
  static const String gridBuilder = '/GridBuilder';
  static const String bottonBarClass = '/BottonBarClass';
  static const String class22 = '/Class22';
  static const String pickerClass = '/PickerClass';
  static const String pageView = '/PageView';
  static const String  frameF = '/FrameF';
  static const String  customWidget = '/CustomWidget';
  // 14
  static const String  collectionList = '/collectionList';
}
// app_router.dart

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      path: AppRoutes.classList,
      builder: (context, state) => ClassList(),
    ),
    GoRoute(
      path: AppRoutes.rowColumns,
      builder: (context, state) => RowColumns(),
    ),
    GoRoute(
      path: AppRoutes.container,
      builder: (context, state) => ContainerClass(),
    ),
    GoRoute(
      path: AppRoutes.stackClass,
      builder: (context, state) => StackClass(),
    ),
    GoRoute(
      path: AppRoutes.iconsImages,
      builder: (context, state) => IconsImages(),
    ),
    GoRoute(
      path: AppRoutes.buttonsFunctions,
      builder: (context, state) => ButtonsFunctions(),
    ),
    GoRoute(
      path: AppRoutes.testRiverPod,
      builder: (context, state) => MyCounterRiverpod(),
    ),
    GoRoute(
      path: AppRoutes.formClass,
      builder: (context, state) => FormClass(),
    ),
    GoRoute(path: AppRoutes.pos, builder: (context, state) => POS()),
    GoRoute(
      path: AppRoutes.listV,
      builder: (context, state) => ListViewClass(),
    ),
    GoRoute( path: AppRoutes.richTextClass, builder: (context, state) => RichTextClass(), ),
    GoRoute(path: AppRoutes.class11, builder: (context, state) => Class11()),
    GoRoute(path: AppRoutes.myListsView, builder: (context, state) => MyListsView()),
    GoRoute(path: AppRoutes.gridBuilder, builder: (context, state) => GridBuilder()),
    GoRoute(path: AppRoutes.bottonBarClass, builder: (context, state) => BottonBarClass()),
    GoRoute(path: AppRoutes.class22, builder: (context, state) => Class22()),
    GoRoute(path: AppRoutes.pickerClass, builder: (context, state) => PickerClass()),
    GoRoute(path: AppRoutes.pageView, builder: (context, state) => MyPageView()),
    GoRoute(path: AppRoutes.frameF, builder: (context, state) =>  FrameF()),
    GoRoute(path: AppRoutes.customWidget, builder: (context, state) =>  CustomWidget()),
    GoRoute(path: AppRoutes.collectionList, builder: (context, state) =>  CollectionList()),
  ],
);
