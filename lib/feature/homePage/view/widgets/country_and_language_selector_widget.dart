import 'package:flutter/material.dart';

class CountryAndLanguageSelectorWidget extends StatelessWidget {
  const CountryAndLanguageSelectorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),

      child: Container(
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.grey, width: 1),
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        // countries flag
                        Image(
                          image: AssetImage('assets/icons/uae_country.png'),
                          height: 25,
                          width: 13,
                        ),
                        SizedBox(width: 8),

                        // country selector
                        Text(
                          'UAE',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.black,
                          size: 20,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(width: 1, height: 20, color: Colors.grey),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.language,
                          color: Colors.black,
                          size: 20,
                        ),

                        SizedBox(width: 8),

                        // language selector
                        Text(
                          'English',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.black,
                          size: 20,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
