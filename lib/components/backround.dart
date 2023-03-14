import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class background extends StatelessWidget {
  final Widget child;
  const background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        height: size.height,
        width: double.infinity,
        color: Color(0xffA4A3A3),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Image(
                image: AssetImage('assets/images/shape.png'),
                height: size.width * 0.45,
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
