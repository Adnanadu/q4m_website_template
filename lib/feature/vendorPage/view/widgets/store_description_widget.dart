
import 'package:flutter/material.dart';

class StoreDescriptionWidget extends StatelessWidget {
  const StoreDescriptionWidget({
    super.key,
    required this.storeDescriptionController,
  });

  final TextEditingController storeDescriptionController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 128,
      child: TextFormField(
        maxLines: 10,
        controller: storeDescriptionController,
        decoration: InputDecoration(
          constraints: BoxConstraints(maxHeight: 100),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: Colors.grey.shade300,
              width: 1,
            ),
          ),
    
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: Colors.grey.shade300,
              width: 1,
            ),
          ),
        ),
      ),
    );
  }
}
