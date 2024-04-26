import 'package:donation_app/components/home_screen.dart';
import 'package:donation_app/model/campaign_model.dart';
import 'package:donation_app/model/user_model.dart';
import 'package:donation_app/pages/account_page.dart';
import 'package:donation_app/pages/donation_page.dart';
import 'package:donation_app/pages/fillprofile_page.dart';
import 'package:donation_app/pages/home_page.dart';
import 'package:donation_app/pages/notification_page.dart';

List<UserModel> usersData = [
  UserModel(
    id: 1,
    name: 'John Doe',
    email: 'john.doe@example.com',
    password: 'password123',
  ),
  UserModel(
    id: 2,
    name: 'test',
    email: 'test@example.com',
    password: '123456',
  ),
];

//List of pages
List pages = const [
  HomePage(),
  DonationPage(),
  NotificationPage(),
  AccountPage()
];

// List of campaigns
List<Campaign> campaigns = [
  Campaign(
    id: 1,
    imagePath: "assets/images/campaign-1.png",
    title: "Bantubarengan",
    description: "Bantu muslim indonesia ke mekkah.",
    collectedAmount: "24.000.000",
    progress: 100.0,
    isSaved: false,
  ),
  Campaign(
    id: 2,
    imagePath: "assets/images/campaign-2.png",
    title: "nosial project",
    description: "Bantu warga pelosok untuk makan siang.",
    collectedAmount: "50.000.000",
    progress: 90.0,
    isSaved: false,
  ),
  Campaign(
    id: 3,
    imagePath: "assets/images/campaign-2.png",
    title: "nosial project",
    description: "Bantu warga pelosok untuk makan siang.",
    collectedAmount: "50.000.000",
    progress: 120.0,
    isSaved: false,
  ),
];

Map<String, List<Map<String, String>>> transactionList = {
  "This month": [
    {
      'logo': 'assets/images/plus.png',
      'title': 'Top up balance',
      'subTitle': '5 Apr 2024',
      'amount': '+Rp 50,000'
    },
    {
      'logo': 'assets/images/minus.png',
      'title': 'Bencana Alam Aceh',
      'subTitle': '4 Apr 2024',
      'amount': '-Rp 25,000'
    },
    {
      'logo': 'assets/images/minus.png',
      'title': 'Bangun Masjid',
      'subTitle': '4 Apr 2024',
      'amount': '-Rp 25,000'
    },
    {
      'logo': 'assets/images/plus.png',
      'title': 'Top up balance',
      'subTitle': '3 Apr 2024',
      'amount': '+Rp 50,000'
    },
    {
      'logo': 'assets/images/minus.png',
      'title': 'Bangun Masjid',
      'subTitle': '1 Apr 2024',
      'amount': '-Rp 10,000'
    },
  ],
  "Mar 2024": [
    {
      'logo': 'assets/images/plus.png',
      'title': 'Top up balance',
      'subTitle': '5 Mar 2024',
      'amount': '+Rp 50,000'
    },
    {
      'logo': 'assets/images/minus.png',
      'title': 'Bencana Alama Aceh',
      'subTitle': '4 Mar 2024',
      'amount': '-Rp 25,000'
    },
    {
      'logo': 'assets/images/minus.png',
      'title': 'Bangun Masjid',
      'subTitle': '4 Mar 2024',
      'amount': '-Rp 25,000'
    },
  ],
};
