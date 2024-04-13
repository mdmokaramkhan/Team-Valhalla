import 'package:flutter/material.dart';
import 'package:jobtal/style.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
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
                'https://cdni.iconscout.com/illustration/premium/thumb/no-notification-7359561-6024629.png',
              ),
            ),
            Text('No Notifications', style: S.textStyles.cardTittleL),
            SizedBox(height: S.sizes.defaultPadding),
            Text('You currently have no notifications', style:  S.textStyles.cardDescription),
            SizedBox(height: S.sizes.defaultPadding * 4),
          ],
        ),
      ),
    );
  }
}
