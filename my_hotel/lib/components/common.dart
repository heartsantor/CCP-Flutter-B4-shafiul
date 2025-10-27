import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final EdgeInsetsGeometry? margin;
  const SectionTitle(this.title, {super.key, this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? const EdgeInsets.only(top: 20, bottom: 12),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge?.copyWith(color: AppColors.primary),
      ),
    );
  }
}

class InfoChip extends StatelessWidget {
  final IconData icon;
  final String label;
  const InfoChip({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const ShapeDecoration(
        color: AppColors.chipBg,
        shape: StadiumBorder(),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 16, color: AppColors.primary),
          const SizedBox(width: 8),
          Text(label, style: Theme.of(context).textTheme.labelLarge?.copyWith(fontSize: 13)),
        ],
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  final TextEditingController? controller;
  const SearchField({super.key, this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: const InputDecoration(
        hintText: 'Search Hotel By Name',
        prefixIcon: Icon(Icons.search),
      ),
    );
  }
}

class IconCircleButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  const IconCircleButton({super.key, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.primary,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(12),
        child: const SizedBox(
          width: 44,
          height: 44,
          child: Icon(Icons.tune, color: Colors.white),
        ),
      ),
    );
  }
}

class LabeledIcon extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color? color;
  const LabeledIcon({super.key, required this.icon, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 14, color: color ?? AppColors.textMuted),
        const SizedBox(width: 6),
        Text(text, style: Theme.of(context).textTheme.bodySmall),
      ],
    );
  }
}
