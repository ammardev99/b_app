import 'package:b_app/course/go_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ClassList extends StatefulWidget {
  const ClassList({super.key});

  @override
  State<ClassList> createState() => _ClassListState();
}

class _ClassListState extends State<ClassList> {
  // open bottomsheet variable
  bool isBottomSheetOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ClassList"), centerTitle: true),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // InkResponse(
            // onTap: () {
            // print("Container Tapped");
            // },
            // onLongPress: () {
            // print("Container Long Pressed");
            // },
            //
            // child: Text("data")),
            //
            // SizedBox(height: 20),
            // InkWell(
            //
            // onLongPress: () {
            // print("Image Long Pressed");
            // },
            //
            // onTap: () {
            // print("Image Tapped");
            // },
            // child: Image.asset(AppImages.manImg1)),
            // SizedBox(height: 20),

            // GestureDetector(
            // onDoubleTap: () {
            // print("Image Double Tapped");
            // },
            // onTap: () {
            // print("Image Tapped");
            // },
            // child: Image.asset(AppImages.manImg1)),
            //
            ElevatedButton(
              onPressed: () {
                context.go(AppRoutes.container);
              },
              child: Text("container"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.go(AppRoutes.stackClass);
              },
              child: Text("Stack"),
            ),
            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                context.go(AppRoutes.class11);
              },

              child: Text("Class11"),
            ),
            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                context.go(AppRoutes.gridBuilder);
              },

              child: Text("GridBuilder"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.go(AppRoutes.class22);
              },
              child: Text("Class 22"),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                context.go(AppRoutes.pickerClass);
              },

              child: Text("PickerClass"),
            ),

            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.go(AppRoutes.iconsImages);
              },
              child: Text("IconsImages"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.go(AppRoutes.richTextClass);
              },
              child: Text("RichTextClass"),
            ),

            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.go(AppRoutes.buttonsFunctions);
              },
              child: Text("Buttons"),
            ),
            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                context.go(AppRoutes.bottonBarClass);
              },
              child: Text("BottonBarClass"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.go(AppRoutes.testRiverPod);
              },
              child: Text("TestRiverPod"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.go(AppRoutes.formClass);
              },
              child: Text("FormClass "),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.go(AppRoutes.formClass);
              },
              child: Text("FormClass "),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.go(AppRoutes.pos);
              },
              child: Text("POS"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.go(AppRoutes.listV);
              },
              child: Text("ListV"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.go(AppRoutes.listV);
              },
              child: Text("ListV"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.go(AppRoutes.listV);
              },
              child: Text("ListV"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.go(AppRoutes.listV);
              },
              child: Text("ListV"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.go(AppRoutes.listV);
              },
              child: Text("ListV"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.go(AppRoutes.listV);
              },
              child: Text("ListV"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.go(AppRoutes.myListsView);
              },
              child: Text("MyListsView"),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        elevation: 10,

        onPressed: () {
          setState(() {
            isBottomSheetOpen = !isBottomSheetOpen;
          });
        },
        child: Icon(Icons.list),
      ),

      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                // Handle menu button press
              },
            ),
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                // Handle menu button press
              },
            ),
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                // Handle menu button press
              },
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Search"),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextField(
                            decoration: InputDecoration(hintText: "Type here"),
                          ),
                          SizedBox(height: 20),
                          // dessription
                          TextField(
                            decoration: InputDecoration(
                              hintText: "Description",
                            ),
                          ),
                        ],
                      ),

                      actions: [
                        TextButton(
                          child: Text("Close"),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        TextButton(
                          child: Text("Close"),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );

                // open alrt dialog box
                // showDialog(
                // context: context,
                // builder: (BuildContext context) {
                // return AlertDialog(
                // title: Text("Search"),
                // content: TextField(
                // decoration: InputDecoration(hintText: "Type here"),
                // ),
                // actions: [
                // TextButton(
                // child: Text("Close"),
                // onPressed: () {
                // Navigator.of(context).pop();
                // },
                // ),
                // ],
                // );
                // },
                // );
              },
            ),
          ],
        ),
      ),

      // 5<10? t:f;
      bottomSheet:
          isBottomSheetOpen
              ? Container(
                color: Colors.grey[200],
                height: 200,
                child: Center(child: Text("This is a Bottom Sheet")),
              )
              : null,
      // menu dummy drawer
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 235, 235, 235),
        // width: mediaQuery.size.width*0.6,
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                // color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                // get.toName

                // Handle Home tap
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // Handle Settings tap
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text('Contact Us'),
              onTap: () {
                // Handle Contact Us tap
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
