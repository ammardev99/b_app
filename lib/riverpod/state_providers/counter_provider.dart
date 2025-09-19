import 'package:flutter_riverpod/flutter_riverpod.dart';

// 1. Create a StateProvider for counter
final myCounter = StateProvider<int>((ref) => 0);

