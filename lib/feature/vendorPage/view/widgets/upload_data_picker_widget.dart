
import 'package:flutter/material.dart';

class UploadDataPickerWidget extends StatelessWidget {
  const UploadDataPickerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            decoration: BoxDecoration(
              color: const Color(0xFFF7F7F7),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.description_rounded,
                  color: Color(0xFF2CC457),
                ),
                const SizedBox(width: 8),
                Text(
                  'Store Brochure.pdf',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  ' 2.5 Mb',
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF83868D),
                  ),
                ),
    
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.close_rounded,
                    color: Color(0xFF676A71),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
