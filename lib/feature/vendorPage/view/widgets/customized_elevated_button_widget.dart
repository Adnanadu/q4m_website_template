import 'package:flutter/material.dart';

class CustomizedElevatedButtonWidget extends StatelessWidget {
  const CustomizedElevatedButtonWidget({
    super.key,
    required this.text,
    this.onTap,
    required this.width,
  });
  final void Function()? onTap;
  final String text;
  final double width;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        minimumSize: Size(width, 40),
        backgroundColor: const Color(0xFF2CC457),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
      child: Text(text),
    );
  }
}
