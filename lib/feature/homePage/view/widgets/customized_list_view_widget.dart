import 'package:flutter/material.dart';

class CustomizedListViewWidget extends StatelessWidget {
  const CustomizedListViewWidget({
    super.key,
    required this.categories,
    required this.text,
  });

  final List<Map<String, String?>> categories;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(text, style: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ],
        ),
        SizedBox(
          height: 110,
          width: double.infinity,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              final category = categories[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      height: 72,
                      width: 72,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                        border: Border.all(
                          color: Colors.green.shade300,
                          width: 2,
                        ),
                      ),
                      child: Image(
                        image: AssetImage(category['iconPath']!),
                        height: 24,
                        width: 24,
                      ),
                    ),
                    if (category['title'] != null) Text(category['title']!),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
