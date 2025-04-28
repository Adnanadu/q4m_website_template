import 'package:flutter/material.dart';

class AgreeTermsWidget extends StatelessWidget {
  const AgreeTermsWidget({super.key, required this.isAgree});

  final ValueNotifier<bool> isAgree;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 20,
          height: 20,
          child: Checkbox(
            activeColor: const Color(0xFF2CC457),
            value: isAgree.value,
            onChanged: (value) {
              isAgree.value = value!;
            },
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: 'I agree to the ',
                  style: const TextStyle(
                    color: Color(0xFF676A71),
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                  children: [
                    TextSpan(
                      text: 'Terms and Conditions',
                      style: const TextStyle(
                        color: Color(0xFF1977F2),
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const TextSpan(
                      text: ' and ',
                      style: TextStyle(
                        color: Color(0xFF676A71),
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: 'Privacy Policy.',
                      style: const TextStyle(
                        color: Color(0xFF1977F2),
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                'I confirm that all provided information is accurate',
                style: TextStyle(
                  color: Color(0xFF676A71),
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
