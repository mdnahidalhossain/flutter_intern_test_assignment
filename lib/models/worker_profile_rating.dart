class WorkerProfileRating {
  final String imagePath;
  final String iconPath;
  final String rating;
  final String name;
  final String profession;

  WorkerProfileRating({
    required this.imagePath,
    required this.iconPath,
    required this.rating,
    required this.name,
    required this.profession,
  });

  static List<WorkerProfileRating> workerProfile = [
    WorkerProfileRating(
      imagePath: 'images/profile-images/profile-1.png',
      iconPath: 'images/other-icons/star-icon.png',
      rating: '4.5',
      name: 'Jane Cooper',
      profession: 'Painter',
    ),
    WorkerProfileRating(
      imagePath: 'images/profile-images/profile-2.png',
      iconPath: 'images/other-icons/star-icon.png',
      rating: '4.5',
      name: 'Jane Cooper',
      profession: 'Painter',
    ),
    WorkerProfileRating(
      imagePath: 'images/profile-images/profile-1.png',
      iconPath: 'images/other-icons/star-icon.png',
      rating: '4.5',
      name: 'Jane Cooper',
      profession: 'Painter',
    ),
  ];
}
