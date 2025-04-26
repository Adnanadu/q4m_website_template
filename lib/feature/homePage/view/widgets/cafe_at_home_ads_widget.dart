import 'package:flutter/material.dart';

class CafeatHomeAdsWidget extends StatelessWidget {
  const CafeatHomeAdsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      height: 108,
      width: double.infinity,
      child: Image(image: AssetImage('assets/images/cafe_at_home.png')),
    );
  }
}
