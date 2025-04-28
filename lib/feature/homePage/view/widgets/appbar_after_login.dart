import 'package:flutter/material.dart';

class AppBarAfterLoginWidget extends StatelessWidget {
  const AppBarAfterLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image(image: AssetImage('assets/icons/Q4M_logo.png')),
        // menu icon
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: SizedBox(
                width: 88,
                height: 40,
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.green.shade100,
                        borderRadius: BorderRadius.circular(36),
                        border: Border.all(color: Color(0xFF2CC457), width: 2),
                      ),
                      child: Icon(
                        Icons.notifications_sharp,
                        color: Color(0xFF2CC457),
                      ),
                    ),
                    SizedBox(width: 4),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.green.shade100,
                        borderRadius: BorderRadius.circular(36),
                        border: Border.all(color: Color(0xFF2CC457), width: 2),
                      ),
                      child: Icon(Icons.person, color: Color(0xFF2CC457)),
                    ),
                  ],
                ),
              ),
            ),
            IconButton(icon: Icon(Icons.menu), onPressed: () {}),
          ],
        ),
      ],
    );
  }
}
