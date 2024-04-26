// ********************
// created by - Prince Shah
// created at - 24/04
// ********************

class Campaign {
  int id;
  String imagePath;
  String title;
  String description;
  String collectedAmount;
  double progress;
  bool isSaved;

  Campaign({
    required this.id,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.collectedAmount,
    required this.progress,
    required this.isSaved,
  });
}
