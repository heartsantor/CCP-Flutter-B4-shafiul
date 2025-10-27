import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class BusinessCard extends StatelessWidget {
  final String imageUrl;
  final List<String> tags;
  const BusinessCard({super.key, required this.imageUrl, required this.tags});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.border),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0C000000),
            blurRadius: 16,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
            child: AspectRatio(
              aspectRatio: 16/11,
              child: Image.network(imageUrl, fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                for (final tag in tags)
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    decoration: const ShapeDecoration(
                      color: AppColors.chipBg,
                      shape: StadiumBorder(),
                    ),
                    child: Text(
                      tag,
                      style: const TextStyle(
                        color: AppColors.text,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
