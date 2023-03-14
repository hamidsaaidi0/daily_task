import 'package:daily_task/components/backround.dart';
import 'package:daily_task/components/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body  : Container(
        height: size.height,
        width: size.width,
        color: Color(0xffA4A3A3),
        child: Column(
          children: [
            Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: size.height * 0.4,
                      width: double.infinity,
                      color: Color(0xff76D2C7),
                    ),
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Image(
                        image: AssetImage('assets/images/shape.png'),
                        height: size.width * 0.45,
                      ),
                    ),
                    Positioned(
                      top: size.height * 0.2,
                      child: Image(
                        image: AssetImage('assets/images/profile.png'),
                      ),
                    ),
                  ],
                ),
                CustomText('Welcome Cristopher !'),
              ],
            ),
            Expanded(child: Container())
          ],
        ),
      ),
    );
  }
}
