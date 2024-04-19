// ********************
// created by - Prince Shah
// created at - 17/04
// *******************

import 'package:donation_app/pages/country_page.dart';
import 'package:donation_app/pages/dbalance1_page.dart';
import 'package:donation_app/pages/dbalance2_page.dart';
import 'package:donation_app/pages/fillprofile_page.dart';
import 'package:donation_app/pages/forgotPassword_page.dart';
import 'package:donation_app/pages/home_page.dart';
import 'package:donation_app/pages/notification_page.dart';
import 'package:donation_app/pages/signin_page.dart';
import 'package:donation_app/pages/signup_page.dart';
import 'package:donation_app/pages/splash_page.dart';
import 'package:donation_app/pages/transaction_history.dart';
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
        page: () => CountryPage(),
      ),
      GetPage(
        name: '/home_page',
        page: () => const HomePage(),
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
    ];
