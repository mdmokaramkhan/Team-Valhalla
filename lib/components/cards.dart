import 'package:flutter/material.dart';
import 'package:jobtal/pages/course_player.dart';
import 'package:jobtal/pages/job_details.dart';
import 'package:jobtal/style.dart';

class JobCard extends StatelessWidget {
  const JobCard({
    super.key,
    required this.color,
    required this.iconUrl,
    required this.header,
    required this.offer,
    required this.offerSub,
    required this.description,
  });
  final Color color;
  final String iconUrl;
  final String header;
  final String offer;
  final String offerSub;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      borderRadius: BorderRadius.circular(S.sizes.textGap),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const JobDetails()));
        },
        child: Container(
          padding: EdgeInsets.all(S.sizes.defaultPadding),
          width: MediaQuery.of(context).size.width * .35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(S.sizes.textGap),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(
                    iconUrl,
                  ),
                ),
              ),
              SizedBox(height: S.sizes.gap),
              Text(header, style: S.textStyles.cardTittleL),
              SizedBox(height: S.sizes.textGap),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(offer, style: S.textStyles.cardTittle),
                  Text(offerSub,
                      style: S.textStyles.cardTittle.copyWith(fontSize: 10)),
                ],
              ),
              SizedBox(height: S.sizes.defaultPadding * 1.5),
              Text(description,
                  style: S.textStyles.cardDescription
                      .copyWith(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}

class CourseCardLarge extends StatelessWidget {
  const CourseCardLarge({
    super.key,
    required this.title,
    required this.publisher,
    required this.price,
    required this.time,
    required this.lesson,
    required this.bannerLink,
  });

  final String title;
  final String publisher;
  final String price;
  final String time;
  final String lesson;
  final String bannerLink;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: S.sizes.gap,
        horizontal: S.sizes.textGap,
      ),
      child: Material(
        borderRadius: BorderRadius.circular(S.sizes.defaultPadding),
        color: Colors.white,
        child: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const VideoApp()));
          },
          borderRadius: BorderRadius.circular(S.sizes.defaultPadding),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.55,
            margin: EdgeInsets.symmetric(
              vertical: S.sizes.gap,
              horizontal: S.sizes.textGap,
            ),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(S.sizes.gap),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(S.sizes.gap),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.width * 0.35,
                      child: Image.network(
                        bannerLink,
                        fit: BoxFit.cover,
                        width: 500,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: S.sizes.gap),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Flexible(
                            flex: 2,
                            child: Text(
                              title,
                              style: S.textStyles.cardTittle,
                              overflow: TextOverflow.clip,
                              textWidthBasis: TextWidthBasis.longestLine,
                            ),
                          ),
                          const Spacer(),
                          Flexible(
                            flex: 1,
                            child: Text(
                              price,
                              style: S.textStyles.cardTittle,
                              maxLines: 1,
                              textAlign: TextAlign.end,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: S.sizes.textGap),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 18,
                            backgroundColor: S.colors.lableBackground,
                            child: Image.asset('assets/avatars/av1.png'),
                          ),
                          SizedBox(width: S.sizes.textGap),
                          Text(publisher,
                              style: S.textStyles.boldSmall),
                          SizedBox(width: S.sizes.gap),
                        ],
                      ),
                      SizedBox(height: S.sizes.textGap),
                      Text(
                        '$time ~ $lesson',
                        style: S.textStyles.cardDescription,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
