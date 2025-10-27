import 'package:flutter/material.dart';
import '../components/common.dart';
import '../components/hotel_card.dart';
import '../components/business_card.dart';
import '../models/hotel.dart';
import '../theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Location', style: Theme.of(context).textTheme.bodySmall),
            const SizedBox(height: 4),
            Text(
              'Bali, Indonesia',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(color: AppColors.primary, fontSize: 20),
            ),
          ],
        ),
        centerTitle: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none_rounded),
            onPressed: () {},
            tooltip: 'Notifications',
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: const _HomeBody(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              InfoChip(icon: Icons.calendar_today_rounded, label: '24 OCT-26 OCT'),
              SizedBox(width: 10),
              InfoChip(icon: Icons.group_rounded, label: '3 guests'),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: const [
              Expanded(child: SearchField()),
              SizedBox(width: 10),
              IconCircleButton(icon: Icons.tune),
            ],
          ),
          const SectionTitle('Recommended Hotels', margin: EdgeInsets.only(top: 24, bottom: 12)),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: demoHotels.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              mainAxisExtent: 270,
            ),
            itemBuilder: (context, index) {
              final h = demoHotels[index];
              return HotelCard(
                imageUrl: h.imgUrl,
                title: h.title,
                location: h.location,
                priceRange: h.priceRange,
                rating: h.rating,
                badge: h.badge,
                isFavorite: h.isFavorite,
              );
            },
          ),
          const SectionTitle('Business Accommodates', margin: EdgeInsets.only(top: 24, bottom: 12)),
          Row(
            children: const [
              Expanded(
                child: BusinessCard(
                  imageUrl: 'https://images.unsplash.com/photo-1497366216548-37526070297c?q=80&w=1200&auto=format&fit=crop',
                  tags: ['Fast Wi‑Fi', 'AC Conference rooms'],
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: BusinessCard(
                  imageUrl: 'https://images.unsplash.com/photo-1554995207-c18c203602cb?q=80&w=1200&auto=format&fit=crop',
                  tags: ['In-room work stations'],
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
