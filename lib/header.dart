import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 50,
        ),
        Image.asset(
          'assets/images/thread_logo.png',
          width: 50,
        ),
        Image.asset(
          'assets/images/more_icon.png',
          width: 50,
        ),
      ],
    );
  }
}
