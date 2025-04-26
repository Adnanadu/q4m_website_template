import 'package:flutter/material.dart';

class FooterTableWidget extends StatelessWidget {
  const FooterTableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF2CC457),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _FooterColumn(
                title: 'TOP CATEGORIES',
                items: [
                  'Groceries',
                  'PC & Computers',
                  'Cell Phones',
                  'Tablets',
                  'Gaming & VR',
                  'Networks',
                  'Cameras',
                  'Sounds',
                  'Office',
                ],
              ),
              _FooterColumn(
                title: 'COMPANY',
                items: [
                  'About us',
                  'Contact',
                  'Career',
                  'Blog',
                  'Store locations',
                ],
              ),
              _FooterColumn(
                title: 'HELP CENTER',
                items: [
                  'Customer Service',
                  'Policy',
                  'Terms & Conditions',
                  'Track Order',
                  'FAQs',
                  'My Account',
                  'Policy Support',
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: _CompanyDetails(
              title: 'Q4M ONLINE',
              items: [
                ' 📞 +22(880)123-4567',
                '📍 123 Business Street, Qatar,NY 10001',
                '✉️ contact@q4monline.com',
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CompanyDetails extends StatelessWidget {
  final String title;
  final List<String> items;

  const _CompanyDetails({required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    final List<String> scoialMediaIcons = [
      'assets/icons/social_media_fb.png',
      'assets/icons/social_media_insta.png',
      'assets/icons/social_media_twitter.png',
      'assets/icons/social_media_youtube.png',
    ];
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          ...items.map(
            (item) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Text(
                item,
                style: const TextStyle(color: Colors.white, fontSize: 13),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: SizedBox(
              height: 35, // Adjust the height as needed to fit all icons
              child: ListView.builder(
                scrollDirection:
                    Axis.horizontal, // Use horizontal scrolling for better layout
                itemCount: scoialMediaIcons.length,
                itemBuilder:
                    (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(36),
                        ),
                        height: 35,
                        width: 35,
                        child: Center(
                          child: Image(
                            image: AssetImage(scoialMediaIcons[index]),
                            color: Color(0xFF2CC457),
                          ),
                        ),
                      ),
                    ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Center(
              child: Text(
                '© 2024 Q4M Online. All rights reserved.',
                style: const TextStyle(color: Colors.white, fontSize: 13),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _FooterColumn extends StatelessWidget {
  final String title;
  final List<String> items;

  const _FooterColumn({required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(right: 16.0, left: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            ...items.map(
              (item) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Text(
                  item,
                  style: const TextStyle(color: Colors.white, fontSize: 13),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
