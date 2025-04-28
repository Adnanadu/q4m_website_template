import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginAndSignupButtonWidget extends StatelessWidget {
  const LoginAndSignupButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          context.push('/login');
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          minimumSize: Size(double.infinity, 40),

          backgroundColor: const Color(0xFF2CC457),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Text('Login / Signup'),
      ),
    );
  }
}
