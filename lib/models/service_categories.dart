class ServiceCategories {
  String imagePath;
  String title;

  ServiceCategories({required this.imagePath, required this.title});

  static List<ServiceCategories> services = [
    ServiceCategories(
      imagePath: 'images/other-icons/Cleaning.png',
      title: 'Cleaning',
    ),
    ServiceCategories(
      imagePath: 'images/other-icons/Brush.png',
      title: 'Paiting',
    ),
    ServiceCategories(
      imagePath: 'images/other-icons/Plumbing.png',
      title: 'Plumbing',
    ),
    ServiceCategories(
      imagePath: 'images/other-icons/Laundry.png',
      title: 'Laundry',
    ),
    ServiceCategories(
      imagePath: 'images/other-icons/Truck.png',
      title: 'Shift',
    ),
  ];
}
