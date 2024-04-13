import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jobtal/auth/login.dart';
import 'package:jobtal/components/buttons.dart';
import 'package:jobtal/style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jobtal',
      theme: ThemeData(
        scaffoldBackgroundColor: S.colors.scaffoldBackgroundColor,
        appBarTheme: AppBarTheme(
          color: S.colors.white,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: S.colors.white,
            statusBarBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.dark,
            systemNavigationBarColor: S.colors.transparent,
          ),
          actionsIconTheme: IconThemeData(color: S.colors.textBold),
          iconTheme: IconThemeData(color: S.colors.textBold),
          titleTextStyle: TextStyle(
            color: S.colors.textBold,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        useMaterial3: false,
      ),
      home: const OnBoarding(),
    );
  }
}

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: S.sizes.defaultPadding * 4),
            Image.asset(
              'assets/images/logo.png',
              scale: 6,
            ),
            SizedBox(height: S.sizes.defaultPadding * 3),
            Center(
              child: Text(
                'Your search for\nthe next dream\njob is over 🚀',
                style: S.textStyles.ralewayHeader,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: S.sizes.defaultPadding * 2),
            SizedBox(
              width: 220,
              child: ButtonOutline(
                lable: 'Start Searching',
                colorBackground: S.colors.primaryColor,
                colorText: S.colors.textBold,
                elevation: 1,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                  );
                },
              ),
            ),
            const Spacer(),
            Image.network(
              'https://media.licdn.com/dms/image/C4E12AQF2pouFuNdGPQ/article-cover_image-shrink_600_2000/0/1622840560290?e=2147483647&v=beta&t=SfKkGfSO20ecAaRDAiod9cT6yoE4FU5v0zrym-aBOMM',
            )
          ],
        ),
      ),
    );
  }
}
