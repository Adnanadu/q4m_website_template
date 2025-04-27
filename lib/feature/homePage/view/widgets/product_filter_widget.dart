import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

class ProductFilterWidget extends HookWidget {
  const ProductFilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    /// Move useState inside the build method
    final selectedIndex = useState<int>(0);

    /// if coupons is selected, show the coupon page otherwise show the product page
    final List<Map<String, Object?>> categories = [
      {'title': 'All Offers', 'icon': null},
      {'title': 'Eid Offers', 'icon': null},
      {'title': ' ', 'icon': Icons.settings},
      {'title': 'Supermarket', 'icon': null},
      {'title': 'Electronics', 'icon': null},
      {'title': 'Others', 'icon': null},
      {'title': 'Offers', 'icon': Icons.settings},
      {'title': 'Product', 'icon': Icons.inventory_2},
      {'title': 'Coupons', 'icon': Icons.card_giftcard},
    ];

    return Center(
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: [
            TableRow(
              children: [
                buildCategoryButton(context, 0, selectedIndex, categories),
                buildCategoryButton(context, 1, selectedIndex, categories),
                buildCategoryButton(context, 2, selectedIndex, categories),
                // buildSettingsButton(),
              ],
            ),
            TableRow(
              children: [
                buildCategoryButton(context, 3, selectedIndex, categories),
                buildCategoryButton(context, 4, selectedIndex, categories),
                buildCategoryButton(context, 5, selectedIndex, categories),
              ],
            ),
            TableRow(
              children: [
                buildCategoryButton(context, 6, selectedIndex, categories),
                buildCategoryButton(context, 7, selectedIndex, categories),
                buildCategoryButton(context, 8, selectedIndex, categories),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCategoryButton(
    BuildContext context,
    int? index,
    ValueNotifier<int> selectedIndex,
    List<Map<String, dynamic>> categories,
  ) {
    final isActive = selectedIndex.value == index;

    return Padding(
      padding: const EdgeInsets.all(6),
      child: InkWell(
        onTap: () {
          // Update the selected index
          selectedIndex.value = index;
          if (index == 8) {
            // Navigate to the coupon page
            context.push('/coupen');
          } else if (index == 6) {
            context.pushReplacement('/home');
          }
        },
        child: Container(
          height: 45,
          decoration: BoxDecoration(
            color: isActive ? Colors.green : Colors.grey.shade200,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (categories[index!]['icon'] != null) ...[
                  Icon(
                    categories[index]['icon'],
                    size: 18,
                    color: isActive ? Colors.white : Colors.black54,
                  ),
                  const SizedBox(width: 6),
                ],
                Flexible(
                  child: Text(
                    categories[index]['title'],
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: isActive ? Colors.white : Colors.black87,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
