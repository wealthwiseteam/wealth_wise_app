import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../resources/constants/app_assets.dart';
import '../../../../resources/styles/app_colors.dart';
import '../../../widgets/public_button.dart';
import '../../../widgets/public_outline_button.dart';
import '../sign_in/sign_in_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  AppAssets.login,
                  alignment: Alignment.center,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    PublicButton(
                      title: "Sign in ",
                      width: 300.w,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignInPage()),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    PublicOutlineButton(
                      title: "Register ",
                      width: 300.w,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignInPage()),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
