import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobtal/components/cards.dart';
import 'package:jobtal/pages/notification.dart';
import 'package:jobtal/style.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: S.colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: S.colors.iconBackground,
                    child: Image.asset('assets/avatars/av1.png'),
                  ),
                  SizedBox(width: S.sizes.gap),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Aryan Raj ',
                        style: S.textStyles.cardTittle,
                      ),
                      Text(
                        'aryanraj38@gmail.com',
                        style: S.textStyles.cardDescription,
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: S.colors.white,
                      shape: BoxShape.circle,
                      boxShadow: const [BoxShadow()],
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Notifications()));
                      },
                      icon: SvgPicture.asset(
                        'assets/icons/svg/Notification.svg',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                height: MediaQuery.of(context).size.height * .16,
                padding: EdgeInsets.all(S.sizes.defaultPadding),
                decoration: BoxDecoration(
                  color: Colors.deepPurple.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(S.sizes.gap),
                ),
                child: Row(
                  children: [
                    Image.network('https://cdni.iconscout.com/illustration/premium/thumb/career-development-6775090-5624649.png'),
                    SizedBox(width: S.sizes.gap * 1.5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        Text(
                          'Future job for everyone',
                          style: S.textStyles.cardTittleL,
                        ),
                        SizedBox(height: S.sizes.textGap),
                        Text(
                          'Lorem Ipsum is simply dummy text\nof the printing and typesetting\nindustry',
                          style: S.textStyles.cardDescription,
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: S.sizes.gap),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Text(
                    'Find Your Job',
                    style: S.textStyles.cardTittle,
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: const Text('See All'),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: [
                  const SizedBox(width: 20),
                  JobCard(
                    color: Colors.blue.withOpacity(0.3),
                    iconUrl:
                        'https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png',
                    header: 'Google',
                    offer: '\$133k ',
                    offerSub: 'Year',
                    description: 'Sr. Software Engineer',
                  ),
                  const SizedBox(width: 10),
                  JobCard(
                    color: Colors.orange.withOpacity(0.3),
                    iconUrl:
                        'https://cdn.iconscout.com/icon/free/png-256/free-tesla-3521840-2945257.png?f=webp',
                    header: 'Tesla',
                    offer: '\$124k ',
                    offerSub: 'Year',
                    description: 'Sr. Product Engineer',
                  ),
                  const SizedBox(width: 10),
                  JobCard(
                    color: Colors.lightGreen.withOpacity(0.3),
                    iconUrl:
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/Amazon_icon.svg/2500px-Amazon_icon.svg.png',
                    header: 'Amazon',
                    offer: '\$100k ',
                    offerSub: 'Year',
                    description: 'Sr. Testing Engineer',
                  ),
                  const SizedBox(width: 10),
                  JobCard(
                    color: Colors.grey.withOpacity(0.3),
                    iconUrl:
                        'https://cdn-icons-png.flaticon.com/512/732/732221.png',
                    header: 'Microsoft',
                    offer: '\$70k ',
                    offerSub: 'Year',
                    description: 'Jr. Product Engineer',
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Text(
                    'Nearby Jobs',
                    style: S.textStyles.cardTittle,
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: const Text('See All'),
                  ),
                ],
              ),
            ),
            const NearbyListTile(
              icon:
                  'https://uxwing.com/wp-content/themes/uxwing/download/brands-and-social-media/apple-icon.png',
              title: 'Senior Product Designer',
              address: 'Remote, San Francisco, USA',
            ),
            const VerticalDivider(),
            const NearbyListTile(
              icon:
                  'https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png',
              title: 'Senior Product Designer',
              address: 'Remote, San Francisco, USA',
            ),
            const VerticalDivider(),
            const NearbyListTile(
              icon: 'https://cdn-icons-png.flaticon.com/512/732/732221.png',
              title: 'Senior Product Designer',
              address: 'Remote, San Francisco, USA',
            ),
            const VerticalDivider(),
            const NearbyListTile(
              icon: 'https://p.kindpng.com/picc/s/133-1333825_chase-logo-logo-chase-manhattan-bank-hd-png.png',
              title: 'Senior Product Designer',
              address: 'Remote, San Francisco, USA',
            ),
            const VerticalDivider(),
          ],
        ),
      ),
    );
  }
}

class NearbyListTile extends StatelessWidget {
  const NearbyListTile({
    super.key,
    required this.icon,
    required this.title,
    required this.address,
  });

  final String icon;
  final String title;
  final String address;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: S.sizes.defaultPadding, vertical: S.sizes.gap),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: S.colors.iconBackground,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(icon),
            ),
          ),
          SizedBox(width: S.sizes.gap * 1.5),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style:
                    S.textStyles.boldSmall.copyWith(color: S.colors.textBold),
              ),
              SizedBox(height: S.sizes.textGap / 2),
              Text(
                address,
                style: S.textStyles.cardDescription.copyWith(fontSize: 12),
              ),
              SizedBox(height: S.sizes.textGap),
            ],
          ),
          const Spacer(),
          SizedBox(
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
              ),
            ),
          )
        ],
      ),
    );
  }
}
