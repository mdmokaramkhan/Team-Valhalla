import 'package:flutter/material.dart';
import 'package:jobtal/components/buttons.dart';
import 'package:jobtal/style.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Chat'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 220,
              width: 220,
              child: Image.network(
                'https://cdn3d.iconscout.com/3d/premium/thumb/empty-chat-8417947-6672511.png?f=webp',
              ),
            ),
            SizedBox(height: S.sizes.defaultPadding),
            Text(
              'It\'s nice to chat with someone',
              style: S.textStyles.cardTittleL,
            ),
            SizedBox(height: S.sizes.defaultPadding),
            Text('Pick a person from left menu and start your conversation',
                style: S.textStyles.cardDescription),
            SizedBox(height: S.sizes.defaultPadding * 2),
            SizedBox(
              width: MediaQuery.of(context).size.width * .45,
              child: ButtonOutline(
                lable: 'Start Chat',
                colorBackground: S.colors.primaryColor,
                colorText: S.colors.primaryColor,
                elevation: 1,
                onPressed: () {},
              ),
            ),
            SizedBox(height: S.sizes.defaultPadding * 4),
          ],
        ),
      ),
    );
  }
}
