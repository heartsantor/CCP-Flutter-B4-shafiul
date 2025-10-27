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
    imgUrl: 'https://i.ibb.co.com/wr39Xc9m/1.png',
    priceRange: '\$200 - \$500 USD',
    rating: 4.5,
    badge: '10% OFF',
    isFavorite: false,
  ),
  Hotel(
    title: 'COMO Uma Resort',
    location: 'Bali, Indonesia',
    imgUrl: 'https://i.ibb.co.com/DHxn6zb8/2.png',
    priceRange: '\$300 - \$500 USD',
    rating: 4.2,
    badge: '10% OFF',
    isFavorite: false,
  ),
];
