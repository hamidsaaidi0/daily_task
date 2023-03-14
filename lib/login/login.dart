import 'package:daily_task/components/backround.dart';
import 'package:daily_task/components/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: background(
        child: Container(
          height: size.height,
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(
                flex: 4,
              ),
              CustomText(
                'Welcome Back !',
                color: Colors.black.withOpacity(0.6),
              ),
              SizedBox(
                height: size.width * 0.06,
              ),
              SvgPicture.asset(
                'assets/svg/login_image.svg',
                width: size.width * 0.65,
              ),
              SizedBox(
                height: size.width * 0.06,
              ),
              CustomTextField(
                size,
                hintText: 'Enter your email Id',
              ),
              SizedBox(
                height: size.width * 0.06,
              ),
              CustomTextField(size, hintText: 'Password', obscureText: true),
              Spacer(
                flex: 1,
              ),
              TextButton(
                onPressed: () {},
                child: CustomText(
                  'Forgot Password',
                  color: Color(0xff0F9585).withOpacity(0.45),
                ),
              ),
              Spacer(
                flex: 1,
              ),
              CustomButton(size: size, text: 'Sign In'),
              Spacer(
                flex: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
