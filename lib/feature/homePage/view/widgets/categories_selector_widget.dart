import 'package:flutter/material.dart';

class CategoriesSelectorWidget extends StatelessWidget {
  const CategoriesSelectorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 230,
          height: 56,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            border: Border.all(color: Colors.grey.shade300, width: 1),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(width: 8),
                  Image(
                    image: AssetImage('assets/icons/icons_2.png'),
                    height: 21,
                    width: 21,
                  ),
                  SizedBox(width: 8),
                  Text("Categories"),
                ],
              ),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: const Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
