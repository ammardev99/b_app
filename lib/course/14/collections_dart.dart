import 'package:flutter/material.dart';

class CollectionList extends StatelessWidget {
  const CollectionList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // My Colors List
          Text('My Colors'),

          // Container(width: 360, height: 40, color: AppColors.primary),
          // Container(width: 360, height: 40, color: AppColors.secondary),
          // Container(width: 360, height: 40, color: AppColors.accent),
          // Image.asset(AppImages.female1),
          Divider(),
          ShowChatCard(obj: myChatsList[0],),
          
          Divider(),
          ShowChatCard(obj: myChatsList[1],),
          Divider(),
          ShowChatCard(obj: myChatsList[2],),
          Divider(),
          ShowChatCard(obj: myChatsList[3],),


        ],
      ),
    );
  }
}

class AppColors {
  static final Color primary = Color(0xFF8018A6);
  static final Color secondary = Color(0xFFFFC107);
  static final Color background = Color(0xFFF5F5F5);
  static final Color accent = Color(0xFF03A9F4);
  static final Color error = Color(0xFFF44336);
  static final Color success = Color(0xFF4CAF50);
  static final Color warning = Color(0xFFFF9800);
  static final Color info = Color(0xFF2196F3);
}

class AppImages {
  static final String female1 = 'assets/female/female1.png';
  static final String female2 = 'assets/female/female2.png';
  static final String man1 = 'assets/man/man1.png';
  static final String man2 = 'assets/man/man2.png';
}

class ChatPerson {
  String fullName;
  String lastMessage;
  String imagePath;
  String lastSeen;
  ChatPerson({
    required this.fullName,
    required this.lastMessage,
    required this.imagePath,
    required this.lastSeen,
  });
}

// List <ChatPerson> myChatsList = [];
List <ChatPerson> myChatsList = [
  ChatPerson(fullName: "Aleena", lastMessage: "Hello", imagePath: AppImages.female1, lastSeen: "8 pm"),
  ChatPerson(fullName: "Aysha", lastMessage: "Call me, ", imagePath: AppImages.female2, lastSeen: "6 pm"),
  ChatPerson(fullName: "Ali", lastMessage: "Good Bye, ", imagePath: AppImages.man1, lastSeen: "5 am"),
  ChatPerson(fullName: "Burhan", lastMessage: "this is last call, ", imagePath: AppImages.man1, lastSeen: "2 pm"),
];




class ShowChatCard extends StatelessWidget {
  ChatPerson obj;
   ShowChatCard({
    super.key,
    required
     this.obj});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child:           ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(obj.imagePath),
            ),
            title: Text(obj.fullName),
            subtitle: Text(obj.lastMessage),
            trailing: Text(obj.lastSeen),
          ),

    );
  }
}