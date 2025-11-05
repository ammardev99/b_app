// import 'package:b_app/course/master/product_model.dart';
// import 'package:flutter/material.dart';

// class ListRendering extends StatelessWidget {
//   const ListRendering({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView.builder(
//         itemCount: productCollection.length,
//         itemBuilder: (context, index) {
//           Product currentProduct = productCollection[index];
//           return ListTile(
//             title: Text(currentProduct.name),
//             subtitle: Text(currentProduct.category),
//             leading: CircleAvatar(
//               backgroundColor: Colors.green.shade300,
//               child: Text(currentProduct.id.toString()),
//             ),
//             trailing: Text(currentProduct.price.toString()),
//           );
//         },
//       ),
//     );
//   }
// }

// import 'dart:math';
// import 'package:b_app/course/master/product_model.dart';
// import 'package:flutter/material.dart';

// class ListRendering extends StatefulWidget {
//   const ListRendering({super.key});

//   @override
//   State<ListRendering> createState() => _ListRenderingState();
// }

// class _ListRenderingState extends State<ListRendering> {
//   final ScrollController _scrollController = ScrollController();
//   int _visibleItems = 10;
//   late List<Product> _displayList;

//   @override
//   void initState() {
//     super.initState();
//     _displayList = List.from(productCollection); // copy main list
//     _scrollController.addListener(_onScroll);
//   }

//   void _onScroll() {
//     if (_scrollController.position.pixels ==
//         _scrollController.position.maxScrollExtent) {
//       setState(() {
//         if (_visibleItems + 10 < _displayList.length) {
//           _visibleItems += 10;
//           print("print list again — loaded $_visibleItems items");
//         } else {
//           _visibleItems = _displayList.length;
//           print("print list again — all ${_displayList.length} items loaded");
//         }
//       });
//     }
//   }

//   Future<void> _refreshProducts() async {
//     await Future.delayed(const Duration(seconds: 1)); // simulate refresh delay
//     setState(() {
//       _displayList.shuffle(Random());
//       _visibleItems = 10;
//       print("print list again — list refreshed and shuffled");
//     });
//   }

//   @override
//   void dispose() {
//     _scrollController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return RefreshIndicator(
//               onRefresh: _refreshProducts,
//       child: Scaffold(
//         appBar: AppBar(title: const Text('Efficient List Rendering')),
//         body: ListView.builder(
//           controller: _scrollController,
//           itemCount: _visibleItems + 1,
//           itemBuilder: (context, index) {
//             if (index == _visibleItems) {
//               return _visibleItems < _displayList.length
//                   ? const Padding(
//                       padding: EdgeInsets.all(16),
//                       child: Center(child: CircularProgressIndicator()),
//                     )
//                   : const SizedBox.shrink();
//             }
        
//             final product = _displayList[index];
//             return ListTile(
//               title: Text(product.name),
//               subtitle: Text(product.category),
//               leading: CircleAvatar(
//                 backgroundColor: Colors.green.shade300,
//                 child: Text(product.id.toString()),
//               ),
//               trailing: Text('\$${product.price}'),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:webview_windows/webview_windows.dart';

// class YouTubePlayerWindows extends StatefulWidget {
//   const YouTubePlayerWindows({super.key});

//   @override
//   State<YouTubePlayerWindows> createState() => _YouTubePlayerWindowsState();
// }

// class _YouTubePlayerWindowsState extends State<YouTubePlayerWindows> {
//   final controller = WebviewController();
//   bool _isLoading = true;
//   bool _isWebViewAvailable = false;

//   @override
//   void initState() {
//     super.initState();
//     _initWebView();
//   }

//   Future<void> _initWebView() async {
//     try {
//       // _isWebViewAvailable = await WebviewController.isWebviewAvailable();
//       if (_isWebViewAvailable) {
//         await controller.initialize();
//         await controller.loadUrl(
//           'https://www.youtube.com/watch?v=2lO0EpHP5Zg',
//         );
//         setState(() {
//           _isLoading = false;
//         });
//       } else {
//         setState(() {
//           _isLoading = false;
//         });
//       }
//     } catch (e) {
//       debugPrint('WebView init error: $e');
//       setState(() {
//         _isLoading = false;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (!_isWebViewAvailable) {
//       return const Scaffold(
//         body: Center(
//           child: Text(
//             '⚠️ WebView2 runtime not found.\nPlease install Microsoft Edge WebView2 Runtime.',
//             textAlign: TextAlign.center,
//           ),
//         ),
//       );
//     }

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('YouTube Video Player (Windows)'),
//       ),
//       body: Center(
//         child: _isLoading
//             ? const CircularProgressIndicator()
//             : Webview(controller),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }
// }
