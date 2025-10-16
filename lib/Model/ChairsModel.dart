class Chairs {
  final String image;
  final String rate;
  final String title;
  final String subtitle;
  final String price;

  Chairs({
    required this.image,
    required this.rate,
    required this.title,
    required this.subtitle,
    required this.price,
  });
}

List<Chairs> chairs = [
  Chairs(
    image: 'assets/HomePage/modern_chair.png',
    rate: '4.8',
    title: 'Modern Chair',
    subtitle: 'Armchair',
    price: '12.500',
  ),
  Chairs(
    image: 'assets/HomePage/modern_chair.png',
    rate: '4.0',
    title: 'Minimalist Chair',
    subtitle: 'Armchair',
    price: '8.300',
  ),
];
