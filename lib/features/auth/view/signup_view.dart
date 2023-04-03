import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:twitter_clone/constants/constants.dart';
import 'package:twitter_clone/features/auth/view/login_view.dart';
import 'package:twitter_clone/theme/theme.dart';

import '../../../common/rounded_small_button.dart';
import '../widgets/auth_field.dart';

class SignUpView extends StatefulWidget {
  static route() => MaterialPageRoute(
        builder: (context) => const SignUpView(),
      );
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final appbar = UIConstants.appBar();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                AuthField(
                  controller: emailController,
                  hinttext: 'Email',
                ),
                const SizedBox(
                  height: 25,
                ),
                AuthField(
                  controller: passwordController,
                  hinttext: 'Password',
                ),
                const SizedBox(
                  height: 40,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: RoundedSmallButton(
                    onTap: () {},
                    label: 'Done',
                    backgroundColor: Pallete.whiteColor,
                    textColor: Pallete.backgroundColor,
                  ),
                ),
                RichText(
                  text: TextSpan(
                      text: "Already have an Account?",
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                      children: [
                        TextSpan(
                          text: ' Login',
                          style: const TextStyle(
                            fontSize: 16,
                            color: Pallete.blueColor,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(context, LoginView.route());
                            },
                        ),
                      ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
