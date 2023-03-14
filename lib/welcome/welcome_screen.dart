import 'package:daily_task/components/backround.dart';
import 'package:daily_task/components/widgets/widgets.dart';
import 'package:daily_task/register/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

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
              SvgPicture.asset(
                'assets/svg/welcome_image.svg',
                height: size.height * 0.27,
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              SizedBox(
                width: size.width * 0.6,
                child: CustomText(
                  'Let’s get started with this new mobile app',
                  color: Color(0xff000000).withOpacity(0.75),
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              SizedBox(
                width: size.width * 0.8,
                child: CustomText(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. At dui lectus nascetur felis nibh molestie. Erat leo, amet pharetra, ridiculus at blandit. Volutpat gravida tortor tempor donec. Placerat aliquam amet, auctor lectus.',
                  color: Color(0xff000000).withOpacity(0.45),
                ),
              ),
              Spacer(
                flex: 1,
              ),
              CustomButton(
                  size: size,
                  text: 'Get Started',
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegisterScreen(),
                      ),
                    );
                  }),
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
