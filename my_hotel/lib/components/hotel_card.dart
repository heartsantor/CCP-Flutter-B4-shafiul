import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class HotelCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String location;
  final String priceRange;
  final double rating;
  final String? badge;
  final bool isFavorite;
  final VoidCallback? onTap;

  const HotelCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.location,
    required this.priceRange,
    required this.rating,
    this.badge,
    this.isFavorite = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
              color: Color(0x0C000000),
              blurRadius: 16,
              offset: Offset(0, 8),
            ),
          ],
          border: Border.all(color: AppColors.border),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
              child: Stack(
                children: [
                  AspectRatio(
                    aspectRatio: 16 / 11,
                    child: Image.network(
                      imageUrl,
                      fit: BoxFit.cover,
                      // prevents red exceptions if the URL 404s
                      errorBuilder: (_, __, ___) => Container(
                        color: const Color(0xFFECEFF3),
                        alignment: Alignment.center,
                        child: const Icon(Icons.image_not_supported_outlined),
                      ),
                    ),
                  ),
                  if (badge != null && badge!.isNotEmpty)
                    Positioned(
                      left: 8,
                      bottom: 8,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                        decoration: ShapeDecoration(
                          color: const Color(0xFFEFF4FF),
                          shape: StadiumBorder(
                            side: BorderSide(color: const Color(0xFFD6E2FF)),
                          ),
                        ),
                        child: Text(
                          badge!,
                          style: const TextStyle(
                            color: AppColors.primary,
                            fontSize: 11,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  Positioned(
                    right: 8,
                    bottom: 8,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                      decoration: const ShapeDecoration(
                        color: Colors.white,
                        shape: StadiumBorder(),
                        shadows: [
                          BoxShadow(color: Color(0x11000000), blurRadius: 8, offset: Offset(0, 4)),
                        ],
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.star_rounded, size: 16, color: Color(0xFFFFB703)),
                          const SizedBox(width: 4),
                          Text(
                            rating.toStringAsFixed(1),
                            style: const TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 8,
                    top: 8,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [BoxShadow(color: Color(0x14000000), blurRadius: 8, offset: Offset(0, 4))],
                      ),
                      child: IconButton(
                        icon: Icon(
                          isFavorite ? Icons.favorite_rounded : Icons.favorite_border_rounded,
                          color: isFavorite ? Colors.red : AppColors.textMuted,
                        ),
                        onPressed: () {},
                        splashRadius: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 12, 12, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Icon(Icons.location_on_outlined, size: 14, color: AppColors.textMuted),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          location,
                          style: Theme.of(context).textTheme.bodySmall,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded( // <-- prevents horizontal overflow
                        child: Text(
                          priceRange,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge
                              ?.copyWith(color: AppColors.textDark),
                        ),
                      ),
                      const SizedBox(width: 4),
                      Text('/night', style: Theme.of(context).textTheme.bodySmall),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
