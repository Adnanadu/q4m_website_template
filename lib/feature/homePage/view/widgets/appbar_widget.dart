import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image(image: AssetImage('assets/icons/Q4M_logo.png')),

        // login and signup button
        TextButton(
          onPressed: () {
            context.push('/auth');
          },
          style: TextButton.styleFrom(
            backgroundColor: Color(0xFF2CC457),
            // primary: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 42, vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(36),
            ),
          ),
          child: Text('Login / Sign Up', style: TextStyle(color: Colors.white)),
        ),

        // menu icon
        SizedBox(width: 8),

        IconButton(icon: Icon(Icons.menu), onPressed: () {}),
      ],
    );
  }
}
