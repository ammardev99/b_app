// call: context.go(AppRoutes.home);
// app_routes.dart
import 'package:b_app/course/buttons_functions.dart';
import 'package:b_app/course/classlist.dart';
import 'package:b_app/course/container.dart';
import 'package:b_app/course/form_class.dart';
import 'package:b_app/course/icons_images.dart';
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
  ],
);
