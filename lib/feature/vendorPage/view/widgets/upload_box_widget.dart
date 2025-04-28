import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:q4m_website_template/core/widgets/customized_elevated_button_widget.dart';

class UploadBoxWidget extends HookWidget {
  const UploadBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Upload Your Offers & Brochures',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 16),
        DottedBorder(
          color: const Color(0xFFE1E1E1),
          strokeWidth: 1.5,
          dashPattern: [6, 6],
          borderType: BorderType.RRect,
          radius: const Radius.circular(16),
          child: Container(
            width: double.infinity,
            height: 172,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.upload_rounded,
                  size: 40,
                  color: Color(0xFFB0B3B8), // Light Grey Icon
                ),
                const SizedBox(height: 12),
                const Text(
                  'Supported Formats: PDF, JPEG, PNG (Max 10MB)',
                  style: TextStyle(color: Color(0xFF676A71), fontSize: 12),
                ),
                const SizedBox(height: 16),
                CustomizedElevatedButtonWidget(
                  onTap: () {},
                  text: 'Browse Files',
                  width: 190,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
