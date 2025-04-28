import 'dart:ui';

import 'package:flutter/material.dart';

class CustomizedTextFieldWidget extends StatelessWidget {
  const CustomizedTextFieldWidget({
    super.key,
    required this.text,
    required this.hintText,
    required this.keyboardType,
    required this.textController,
  });
  final String text;
  final String hintText;
  final TextInputType keyboardType;
  final TextEditingController textController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(36),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade100,
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              text,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 8),
            TextField(
              controller: textController,
              keyboardType: keyboardType,
              decoration: InputDecoration(
                constraints: BoxConstraints(maxHeight: 40),
                hintText: hintText,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(36),
                  borderSide: BorderSide(color: Colors.grey.shade300),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(36),
                  borderSide: BorderSide(
                    color: Colors.grey.shade300,
                  ), // Same color as the default border
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
