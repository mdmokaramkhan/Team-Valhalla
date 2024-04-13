import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobtal/style.dart';

class JobDetails extends StatefulWidget {
  const JobDetails({super.key});

  @override
  State<JobDetails> createState() => _JobDetailsState();
}

class _JobDetailsState extends State<JobDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/custom/heart.svg',
              // ignore: deprecated_member_use
              color: Colors.red,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
              radius: 42,
              backgroundColor: S.colors.iconBackground,
              child: Image.network(
                'https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png',
              ),
            ),
          ),
          SizedBox(height: S.sizes.defaultPadding * 1.5),
          Text('Sr. Software Engineer', style: S.textStyles.cardTittleL),
          SizedBox(height: S.sizes.gap),
          Text(
            'Remote, San Francisco, USA',
            style: S.textStyles.cardDescription,
          ),
          SizedBox(height: S.sizes.gap),
          Wrap(
            children: [
              const Chip(label: Text('Description')),
              SizedBox(width: S.sizes.gap),
              const Chip(label: Text('Company')),
              SizedBox(width: S.sizes.gap),
              const Chip(label: Text('Review')),
            ],
          ),
          SizedBox(height: S.sizes.defaultPadding),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Overview',
                    style: S.textStyles.cardTittleL,
                  ),
                ),
                SizedBox(height: S.sizes.gap),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'In the digital age, real-time communication has become an integral part of our lives. From instant messaging to social networking, the demand for real-time chat applications is ever-growing. Flutter, a popular UI toolkit, coupled with Socket.IO, a real-time communication library, provides an excellent platform to develop such applications seamlessly. In this tutorial.',
                    style: S.textStyles.cardDescription,
                  ),
                ),
                SizedBox(height: S.sizes.gap),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Requirements',
                    style: S.textStyles.cardTittleL,
                  ),
                ),
                SizedBox(height: S.sizes.gap),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
