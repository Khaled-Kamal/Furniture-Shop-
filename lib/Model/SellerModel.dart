class SellerModel {
  final String image;
  final String rate;
  final String title;
  final String subtitle;
  final String price;

  SellerModel({
    required this.image,
    required this.rate,
    required this.title,
    required this.subtitle,
    required this.price,
  });
}

List<SellerModel> seller = [
  SellerModel(
    image: 'assets/HomePage/yellowChair.png',
    rate: '4.3',
    title: 'Yellow Chair',
    subtitle: 'Armchair',
    price: '10.500',
  ),
  SellerModel(
    image: 'assets/HomePage/brownChair.png',
    rate: '3.9',
    title: 'Brown Chair',
    subtitle: 'Armchair',
    price: '7.400',
  ),
];
