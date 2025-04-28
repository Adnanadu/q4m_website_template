import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterAsVendorButtonWidget extends StatelessWidget {
  const RegisterAsVendorButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.black,
        minimumSize: Size(double.infinity, 48),
        backgroundColor: Colors.white,
        side: BorderSide(color: Color(0xFF2CC457), width: 2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(36)),
      ),
      onPressed: () {
        context.push('/vendor');
      },
      child: Text('Register as a Vendor'),
    );
  }
}
