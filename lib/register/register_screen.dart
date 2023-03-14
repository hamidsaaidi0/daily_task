import 'package:daily_task/components/backround.dart';
import 'package:daily_task/components/widgets/widgets.dart';
import 'package:daily_task/login/login.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: background(
          child: Container(
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(
              flex: 3,
            ),
            CustomText('Welcome Onboard!'),
            SizedBox(
              height: size.width * 0.06,
            ),
            CustomText(
              'Let’s help you meet your task.',
              color: Colors.black.withOpacity(0.4),
            ),
            SizedBox(
              height: size.width * 0.1,
            ),
            CustomTextField(size, hintText: 'Enter your full name'),
            SizedBox(
              height: size.width * 0.06,
            ),
            CustomTextField(size, hintText: 'Enter your email id'),
            SizedBox(
              height: size.width * 0.06,
            ),
            CustomTextField(size,
                hintText: 'Enter your password', obscureText: true),
            SizedBox(
              height: size.width * 0.06,
            ),
            CustomTextField(size,
                hintText: 'Confirm password', obscureText: true),
            Spacer(
              flex: 1,
            ),
            CustomButton(size: size, text: 'Register'),
            SizedBox(
              height: size.width * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  'Already have an account?',
                  color: Colors.black.withOpacity(0.4),
                ),
                SizedBox(
                  width: 5,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                    );
                  },
                  child: CustomText(
                    'Sign In',
                    color: Color(0xff76D2C7),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.width * 0.05,
            ),
          ],
        ),
      )),
    );
  }
}
