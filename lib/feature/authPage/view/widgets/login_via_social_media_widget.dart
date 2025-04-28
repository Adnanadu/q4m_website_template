import 'package:flutter/material.dart';

class LogiaViaSocialMediaWidget extends StatelessWidget {
  const LogiaViaSocialMediaWidget({
    super.key,
    required this.assetImage,
    required this.text,
  });
  final String text;
  final String assetImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade200, width: 1),
        borderRadius: BorderRadius.circular(36),
      ),
      height: 48,
      width: double.infinity,
      child: InkWell(
        onTap: () {
          // Handle social Media login
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Image(image: AssetImage(assetImage), height: 22.5, width: 24),
            SizedBox(width: 8),
            Text(text),
          ],
        ),
      ),
    );
  }
}
