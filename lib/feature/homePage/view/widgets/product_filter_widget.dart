import 'package:flutter/material.dart';

class ProductFilterWidget extends StatelessWidget {
  const ProductFilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: [
            TableRow(
              children: [
                _buildCategoryButton('All Offers', isActive: true),
                _buildCategoryButton('Eid Offers'),
                _buildIconButton(Icons.settings),
              ],
            ),
            TableRow(
              children: [
                _buildCategoryButton('Supermarket'),
                _buildCategoryButton('Electronics'),
                _buildCategoryButton('Others'),
              ],
            ),
            TableRow(
              children: [
                _buildCategoryButton('Offers', icon: Icons.settings),
                _buildCategoryButton('Product', icon: Icons.inventory_2),
                _buildCategoryButton(
                  'Coupons',
                  isActive: true,
                  icon: Icons.card_giftcard,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryButton(
    String title, {
    bool isActive = false,
    IconData? icon,
  }) {
    return Padding(
      padding: const EdgeInsets.all(6),
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
              if (icon != null) ...[
                Icon(
                  icon,
                  size: 18,
                  color: isActive ? Colors.white : Colors.black54,
                ),
                SizedBox(width: 6),
              ],
              Flexible(
                child: Text(
                  title,
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
    );
  }

  Widget _buildIconButton(IconData icon) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: Container(
        height: 45,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          shape: BoxShape.circle,
        ),
        child: Center(child: Icon(icon, size: 24, color: Colors.black54)),
      ),
    );
  }
}
