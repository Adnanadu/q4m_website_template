import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:q4m_website_template/core/widgets/customized_elevated_button_widget.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image(image: AssetImage('assets/icons/Q4M_logo.png')),

        // login and signup button
        CustomizedElevatedButtonWidget(
          text: 'Login / Sign Up',
          width: 100,
          onTap: () {
            context.push('/login');
          },
        ),

        // menu icon
        SizedBox(width: 8),

        IconButton(icon: Icon(Icons.menu), onPressed: () {}),
      ],
    );
  }
}
