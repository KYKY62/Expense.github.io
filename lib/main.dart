import 'package:expense_tracker/page/BudgetNavigator/createbudget.dart';
import 'package:expense_tracker/page/BudgetNavigator/editbudget.dart';
import 'package:expense_tracker/page/ProfileNavigator/accountprofile.dart';
import 'package:expense_tracker/page/ProfileNavigator/addnewaccount.dart';
import 'package:expense_tracker/page/ProfileNavigator/currency_page.dart';
import 'package:expense_tracker/page/ProfileNavigator/language_page.dart';
import 'package:expense_tracker/page/ProfileNavigator/security_page.dart';
import 'package:expense_tracker/page/ProfileNavigator/settingprofile.dart';
import 'package:expense_tracker/page/ProfileNavigator/theme_page.dart';
import 'package:expense_tracker/page/home_view.dart';
import 'package:expense_tracker/utils/colors.dart';
import 'package:expense_tracker/page/BudgetNavigator/detailbudget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: appWhite,
        canvasColor: Colors.transparent,
      ),
      home: HomeView(),
      routes: {
        '/createBudget': (context) => const CreateBudget(),
        '/detailBudget': (context) => const DetailBudget(),
        '/editBudget': (context) => const EditBudget(),
        '/accountProfile': (context) => const AccountProfile(),
        '/addnewaccount': (context) => const AddNewAccount(),
        '/currencyPage': (context) => const CurrencyPage(),
        '/profileSetting': (context) => const SettingProfilePage(),
        '/languagePage': (context) => const SettingLanguagePage(),
        '/themePage': (context) => const SettingThemePage(),
        '/securityPage': (context) => const SettingSecurityPage(),
      },
    );
  }
}
