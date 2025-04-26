import 'package:flutter/material.dart';

class ProductFilterWidget extends StatelessWidget {
  const ProductFilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        height: 160,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 9, // 3x3
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 2.5, // 👈 makes the chip wider and short
          ),
          itemBuilder: (context, index) {
            final chips = [
              const TextChip(label: 'All Offers', isSelected: true),
              const TextChip(label: 'Eid Offers'),

              const IconChip(icon: Icons.tune),
              const TextChip(label: 'Supermarket'),
              const TextChip(label: 'Electronics'),
              const TextChip(label: 'Others'),
              const IconChip(
                label: 'Offers',
                icon: Icons.local_offer,
                isSelected: true,
              ),
              const IconChip(label: 'Product', icon: Icons.inventory),
              const IconChip(label: 'Coupons', icon: Icons.card_membership),
            ];
            return chips[index];
          },
        ),
      ),
    );
  }
}

class TextChip extends StatelessWidget {
  final String label;
  final bool isSelected;

  const TextChip({super.key, required this.label, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: isSelected ? Colors.green : Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20),
      ),
      alignment: Alignment.center,
      child: Text(
        label,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.black87,
          fontSize: 14,
          fontWeight: FontWeight.w500,
          height: 1.2,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class IconChip extends StatelessWidget {
  final String? label;
  final IconData icon;
  final bool isSelected;

  const IconChip({
    super.key,
    this.label,
    required this.icon,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? Colors.green : Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20),
      ),
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 18,
            color: isSelected ? Colors.white : Colors.black54,
          ),
          if (label != null) ...[
            const SizedBox(width: 6),
            Text(
              label!,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.black87,
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
