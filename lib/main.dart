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
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: appWhite,
        canvasColor: Colors.transparent,
      ),
      home: const HomeView(),
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
