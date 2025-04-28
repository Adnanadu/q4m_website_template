import 'package:flutter/material.dart';

class StoreCategoryWidget extends StatelessWidget {
  const StoreCategoryWidget({
    super.key,
    required this.storeCategoryValue,
    required this.storeCategoryList,
    required this.storeCategoryController,
  });

  final ValueNotifier<String> storeCategoryValue;
  final ValueNotifier<List<String>> storeCategoryList;
  final TextEditingController storeCategoryController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Store Category',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 8),
        Container(
          height: 40,
          padding: EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.all(Radius.circular(36)),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: DropdownButton<String>(
            value:
                storeCategoryValue.value == 'Select Store Category'
                    ? null
                    : storeCategoryValue.value,
            borderRadius: BorderRadius.circular(36),
            isExpanded: true,
            underline: Container(height: 0),
            hint: Text('Select Store Category'),
            items:
                storeCategoryList.value
                    .map(
                      (category) => DropdownMenuItem<String>(
                        value: category,
                        child: Text(category),
                      ),
                    )
                    .toList(),
            onChanged: (selectedCategory) {
              if (selectedCategory != null) {
                storeCategoryValue.value = selectedCategory;
                storeCategoryController.text = selectedCategory;
              }
            },
          ),
        ),
      ],
    );
  }
}
