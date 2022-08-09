import 'package:expense_tracker/page/bottomNavBar/transaction_page.dart';
import 'package:expense_tracker/page/bottomNavBar/home_page.dart';
import 'package:expense_tracker/page/bottomNavBar/profile_page.dart';
import 'package:expense_tracker/page/bottomNavBar/budget_page.dart';
import 'package:expense_tracker/widgets/floating_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentTab = 0;
  Widget currentScreen = HomePage();

  @override
  Widget build(BuildContext context) {
    Widget mainPage() {
      switch (currentTab) {
        case 0:
          return HomePage();
        case 1:
          return TransactionPage();
        case 2:
          return BudgetPage();
        case 3:
          return const ProfilePage();
        default:
          return HomePage();
      }
    }

    return Scaffold(
      body: mainPage(),
      floatingActionButton: FloatingWidget(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = HomePage();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/icons/icon_home.png',
                          color: currentTab == 0
                              ? const Color(0xff7F0DFF)
                              : Colors.grey,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(
                            color: currentTab == 0
                                ? const Color(0xff7F3DFF)
                                : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = BudgetPage();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/icons/icon_transaction.png',
                          color: currentTab == 1
                              ? const Color(0xff7F3DFF)
                              : Colors.grey,
                        ),
                        Text(
                          "Transaction",
                          style: TextStyle(
                            color: currentTab == 1
                                ? const Color(0xff7F3DFF)
                                : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/icons/icon_budget.png',
                          color: currentTab == 2
                              ? const Color(0xff7F3DFF)
                              : Colors.grey,
                        ),
                        Text(
                          "Budget",
                          style: TextStyle(
                            color: currentTab == 2
                                ? const Color(0xff7F3DFF)
                                : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/icons/icon_profile.png',
                          color: currentTab == 3
                              ? const Color(0xff7F3DFF)
                              : Colors.grey,
                        ),
                        Text(
                          "Profile",
                          style: TextStyle(
                              color: currentTab == 3
                                  ? const Color(0xff7F3DFF)
                                  : Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
