import 'package:expense_tracker/page/BudgetNavigator/createbudget.dart';
import 'package:expense_tracker/page/BudgetNavigator/editbudget.dart';
import 'package:expense_tracker/page/ProfileNavigator/accountprofile.dart';
import 'package:expense_tracker/page/ProfileNavigator/addnewaccount.dart';
import 'package:expense_tracker/page/bottomNavBar/profile_page.dart';
import 'package:expense_tracker/page/bottomNavBar/transaction_page.dart';
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
      },
    );
  }
}
