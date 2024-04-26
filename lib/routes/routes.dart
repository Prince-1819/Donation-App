// ********************
// created by - Prince Shah
// created at - 17/04
// *******************

import 'package:donation_app/pages/account_page.dart';
import 'package:donation_app/pages/country_page.dart';
import 'package:donation_app/pages/dbalance1_page.dart';
import 'package:donation_app/pages/dbalance2_page.dart';
import 'package:donation_app/pages/donation_page.dart';
import 'package:donation_app/pages/donation_reminder.dart';
import 'package:donation_app/pages/edit_profile_page1.dart';
import 'package:donation_app/pages/fillprofile_page.dart';
import 'package:donation_app/pages/forgotPassword_page.dart';
import 'package:donation_app/pages/navManager_page.dart';
import 'package:donation_app/pages/notification_page.dart';
import 'package:donation_app/pages/savedCampaigns_page.dart';
import 'package:donation_app/pages/searchCampaign_page.dart';
import 'package:donation_app/pages/settings_page.dart';
import 'package:donation_app/pages/signin_page.dart';
import 'package:donation_app/pages/signup_page.dart';
import 'package:donation_app/pages/splash_page.dart';
import 'package:donation_app/pages/transaction_history_page.dart';
import 'package:get/get.dart';

appRoutes() => [
      GetPage(
        name: '/splash_screen',
        page: () => const SplashScreenPage(),
      ),
      GetPage(
        name: '/donation_page1',
        page: () => const DonationBalancePage1(),
      ),
      GetPage(
        name: '/donation_page2',
        page: () => const DonationBalancePage2(),
      ),
      GetPage(
        name: '/transaction_history',
        page: () => const TransactionHistoryPage(),
      ),
      GetPage(
        name: '/sign_in',
        page: () => const SigninPage(),
      ),
      GetPage(
        name: '/sign_up',
        page: () => const SignupPage(),
      ),
      GetPage(
        name: '/country_setup',
        page: () => const CountryPage(),
      ),
      GetPage(
        name: '/home_page',
        page: () => const NavManagerPage(),
      ),
      GetPage(
        name: '/forget_password',
        page: () => const ForgotPasswordPage(),
      ),
      GetPage(
        name: '/fill_profile',
        page: () => FillProfilePage(),
      ),
      GetPage(
        name: '/transaction_history',
        page: () => const TransactionHistoryPage(),
      ),
      GetPage(
        name: '/notification_page',
        page: () => const NotificationPage(),
      ),
      GetPage(
        name: '/saved_campaigns_page',
        page: () => const SavedCampaignsPage(),
      ),
      GetPage(
        name: '/search_campaign_page',
        page: () => const SearchCampaignPage(),
      ),
      GetPage(
        name: '/donation_page',
        page: () => const DonationPage(),
      ),
      GetPage(
        name: '/account_page',
        page: () => const AccountPage(),
      ),
      GetPage(
        name: '/edit_profile1',
        page: () => EditProfilePage1(),
      ),
      GetPage(
        name: '/donation_reminder',
        page: () => const DonationReminderPage(),
      ),
      // GetPage(
      //   name: '/change password',
      //   page: () => const AccountPage(),
      // ),
      GetPage(
        name: '/settings',
        page: () => const SettingsPage(),
      ),
    ];
