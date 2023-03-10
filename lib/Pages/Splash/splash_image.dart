import 'package:flutter/material.dart';

class SplashImage extends StatelessWidget {
  const SplashImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child: Image.asset(
          "assets/daikin_new_logo.jpg",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}