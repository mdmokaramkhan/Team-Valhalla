import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jobtal/components/buttons.dart';
import 'package:jobtal/components/inputs.dart';
import 'package:jobtal/pages/dash.dart';
import 'package:jobtal/style.dart';
import 'package:jobtal/utils.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool userFound = false;
  late String username;
  late String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: S.sizes.defaultPadding * 2,
          horizontal: S.sizes.defaultPadding,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: S.sizes.defaultPadding * 2),
            Text(
              'Get Started With\nJobtal',
              style: TextStyle(
                color: S.colors.textBold,
                fontSize: 26,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: S.sizes.defaultPadding),
            Text(
              'Enter your mobile number to login & signup',
              style: S.textStyles.cardDescription,
            ),
            SizedBox(height: S.sizes.defaultPadding * 2),
            TextFormField(
              style: S.textStyles.cardTittle,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                hintText: '00000 00000',
                hintStyle: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: S.colors.textHint,
                ),
                prefixIcon: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.network(
                        'https://cdn.iconscout.com/icon/free/png-256/india-flag-country-nation-union-empire-32988.png',
                        width: 24,
                      ),
                      SizedBox(width: S.sizes.textGap),
                      Text(
                        '+91',
                        style: S.textStyles.cardTittle,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              inputFormatters: [
                LengthLimitingTextInputFormatter(10),
              ],
              keyboardType: TextInputType.number,
              onChanged: (value) async {
                if (value.length == 10) {
                  if (mounted) FocusScope.of(context).unfocus();
                  username = value;
                  Utils.show.fullScreenLoading2(context);
                  // var response = await Api.authenticates.checkUsername(
                  //   context: context,
                  //   username: username,
                  //   password: 'password',
                  // );
                  // if (response.data['success'] == true) {
                  //   setState(() {
                  //     userFound = true;
                  //   });
                  // } else {
                  //   if (mounted) {
                  //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  //       content: Text(response.data['response']),
                  //     ));
                  //   }
                  // }
                  Future.delayed(const Duration(seconds: 5), () {
                    Navigator.pop(context);
                    setState(() {
                      userFound = true;
                    });
                  });
                } else if (userFound) {
                  setState(() {
                    userFound = false;
                  });
                }
              },
            ),
            SizedBox(height: S.sizes.gap),
            userFound
                ? Form(
                    key: _formKey,
                    child: PasswordInput(
                      lable: 'Password',
                      password: 'assets/icons/custom/key.svg',
                      onSaved: (value) => password = value.toString(),
                    ),
                  )
                : Container(),
            SizedBox(height: S.sizes.defaultPadding),
            GestureDetector(
              onTap: () {},
              child: Text(
                'Having trouble, need help?',
                style: TextStyle(
                  color: S.colors.primaryColor,
                  fontSize: 14,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            const Spacer(),
            userFound
                ? ButtonLarge(
                    lable: 'NEXT',
                    color: S.colors.primaryColor,
                    onPressed: () {
                      // if (_formKey.currentState!.validate()) {
                      //   _formKey.currentState!.save();
                      //   Api.authenticates.signIn(
                      //     context: context,
                      //     username: username,
                      //     password: password,
                      //   );
                      // }
                      Utils.show.fullScreenLoading2(context);
                      Future.delayed(
                          const Duration(
                            seconds: 3,
                          ), () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Dashboard(),
                          ),
                        );
                      });
                      return;
                    },
                  )
                : ButtonLarge(
                    lable: 'NEXT',
                    color: S.colors.primaryColor,
                    onPressed: null,
                  ),
          ],
        ),
      ),
    );
  }
}
