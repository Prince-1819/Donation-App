import 'package:donation_app/components/home_screen.dart';
import 'package:donation_app/model/campaign_model.dart';
import 'package:donation_app/model/user_model.dart';

List<UserModel> usersData = [
  UserModel(
    id: 1,
    name: 'John Doe',
    email: 'john.doe@example.com',
    password: 'password123',
  ),
  UserModel(
    id: 2,
    name: 'Jane Doe',
    email: 'jane.doe@example.com',
    password: 'password456',
  ),
  UserModel(
    id: 3,
    name: 'Alice Smith',
    email: 'alice.smith@example.com',
    password: 'password789',
  ),
  UserModel(
    id: 4,
    name: 'Bob Johnson',
    email: 'bob.johnson@example.com',
    password: 'passwordabc',
  ),
];

//List of pages
List pages = const [
  HomeScreen(),
  HomeScreen(),
  HomeScreen(),
];

// List of campaigns
List<Campaign> campaigns = [
  Campaign(
    imagePath: "assets/images/campaign-1.png",
    title: "Bantubarengan",
    description: "Bantu muslim indonesia ke mekkah.",
    collectedAmount: "24.000.000",
    progress: 100.0,
  ),
  Campaign(
    imagePath: "assets/images/campaign-2.png",
    title: "nosial project",
    description: "Bantu warga pelosok untuk makan siang.",
    collectedAmount: "50.000.000",
    progress: 90.0,
  ),
  Campaign(
    imagePath: "assets/images/campaign-2.png",
    title: "nosial project",
    description: "Bantu warga pelosok untuk makan siang.",
    collectedAmount: "50.000.000",
    progress: 120.0,
  ),
];
