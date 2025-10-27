class Hotel {
  final String title;
  final String location;
  final String imgUrl;
  final String priceRange;
  final double rating;
  final String? badge;
  final bool isFavorite;

  const Hotel({
    required this.title,
    required this.location,
    required this.imgUrl,
    required this.priceRange,
    required this.rating,
    this.badge,
    this.isFavorite = false,
  });
}

const demoHotels = <Hotel>[
  Hotel(
    title: 'AYANA Resort',
    location: 'Bali, Indonesia',
    imgUrl: 'https://images.unsplash.com/photo-1566079463181-2526ab7fbf03?q=80&w=1200&auto=format&fit=crop',
    priceRange: '\$200 - \$500 USD',
    rating: 4.5,
    badge: '10% OFF',
    isFavorite: false,
  ),
  Hotel(
    title: 'COMO Uma Resort',
    location: 'Bali, Indonesia',
    imgUrl: 'https://images.unsplash.com/photo-1501117716987-c8e0040ba69d?q=80&w=1200&auto=format&fit=crop',
    priceRange: '\$300 - \$500 USD',
    rating: 4.2,
    badge: '10% OFF',
    isFavorite: false,
  ),
];
