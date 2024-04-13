import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobtal/components/cards.dart';
import 'package:jobtal/style.dart';

class Courses extends StatefulWidget {
  const Courses({super.key});

  @override
  State<Courses> createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  List<String> categories = [
    'All Courses',
    'Coding',
    'AR VR MR',
    'Design',
    'Finance',
    'Treding',
    'Freelancing',
    'Others'
  ];

  String selected = 'Coding';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: S.colors.white,
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: SearchInput(),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                categories.length,
                (index) => Container(
                  margin: EdgeInsets.only(left: S.sizes.gap),
                  child: ChoiceChip(
                    backgroundColor: S.colors.iconBackground,
                    selected: selected == categories[index] ? true : false,
                    selectedColor: S.colors.primaryColor,
                    side: BorderSide(color: S.colors.iconBackground),
                    label: Text(
                      categories[index],
                      style: TextStyle(
                        color: selected == categories[index]
                            ? Colors.white
                            : S.colors.textBold,
                      ),
                    ),
                    onSelected: (value) {
                      debugPrint('$value - $index');
                      setState(() {
                        selected = categories[index];
                      });
                    },
                  ),
                ),
              ),
            ),
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            child: Row(
              children: [
                CourseCardLarge(
                  title: 'JavaScript & JQuery',
                  publisher: 'Cameron Williamson',
                  price: '₹ 1190',
                  time: '   3h 30m',
                  lesson: '24 lesson',
                  bannerLink:
                      'https://as1.ftcdn.net/v2/jpg/02/90/10/66/1000_F_290106626_Kw1OmUHxy8og1fDrowhLYUoy0mvsVt6f.jpg',
                ),
                CourseCardLarge(
                  title: 'JavaScript & JQuery',
                  publisher: 'Cameron Williamson',
                  price: '₹ 1190',
                  time: '   3h 30m',
                  lesson: '24 lesson',
                  bannerLink:
                      'https://learncodewithdurgesh.com/_next/image?url=%2F_next%2Fstatic%2Fmedia%2FpremiumCourseBanner1.555c649a.png&w=1080&q=75',
                ),
                CourseCardLarge(
                  title: 'JavaScript & JQuery',
                  publisher: 'Cameron Williamson',
                  price: '₹ 1190',
                  time: '   3h 30m',
                  lesson: '24 lesson',
                  bannerLink:
                      'https://techmetix.in/wp-content/uploads/2021/08/flutter-course.jpeg',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SearchInput extends StatelessWidget {
  const SearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(S.sizes.gap),
        ),
        hintText: 'Search..',
        hintStyle: TextStyle(
          fontWeight: FontWeight.w600,
          color: S.colors.textBold,
        ),
        prefixIcon: Padding(
          padding: EdgeInsets.all(S.sizes.gap),
          child: SvgPicture.asset(
            'assets/icons/svg/Search.svg',
            // ignore: deprecated_member_use
            color: S.colors.textBold,
          ),
        ),
      ),
    );
  }
}
