class ServiceCard {
  final String imagePath;
  final String iconPath;
  final String rating;
  final String serviceHour;
  final String serviceType;
  final String cardTitle;
  final String newPrice;
  final String oldPrice;
  final String userIcon;
  final String userName;

  ServiceCard({
    required this.imagePath,
    required this.iconPath,
    required this.rating,
    required this.serviceHour,
    required this.serviceType,
    required this.cardTitle,
    required this.newPrice,
    required this.oldPrice,
    required this.userIcon,
    required this.userName,
  });

  static List<ServiceCard> serviceCard = [
    ServiceCard(
      imagePath: 'images/card-images/SC-image-1.jpg',
      iconPath: 'images/other-icons/star-icon.png',
      rating: '4.5',
      serviceHour: '1 hr',
      serviceType: 'Painting',
      cardTitle: 'Home Cleaning Services at Miami, FL',
      newPrice: '\$100',
      oldPrice: '\$200',
      userIcon: 'images/other-icons/user-icon.png',
      userName: 'Robert Fox',
    ),

    ServiceCard(
      imagePath: 'images/card-images/SC-image-2.jpg',
      iconPath: 'images/other-icons/star-icon.png',
      rating: '4.5',
      serviceHour: '1 hr',
      serviceType: 'Painting',
      cardTitle: 'Home Cleaning Services at Miami, FL',
      newPrice: '\$100',
      oldPrice: '\$200',
      userIcon: 'images/other-icons/user-icon.png',
      userName: 'Robert Fox',
    ),
  ];
}
