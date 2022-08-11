import 'package:expense_tracker/utils/colors.dart';
import 'package:expense_tracker/widgets/budget%20widget/budget_widget.dart';
import 'package:flutter/material.dart';

class BudgetPage extends StatelessWidget {
  const BudgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isEmpty = false;

    Widget topHeaderBudget() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 42),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {},
              child: const Icon(Icons.keyboard_arrow_left, color: appWhite),
            ),
            const Text(
              "May",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: appWhite,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: const Icon(Icons.keyboard_arrow_right, color: appWhite),
            ),
          ],
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: appPrimary,
        body: Column(
          children: [
            topHeaderBudget(),
          ],
        ),
        bottomSheet: BottomSheet(
          enableDrag: false,
          onClosing: () {},
          builder: (context) {
            return Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 1.4,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(24),
                ),
                color: appWhite,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: isEmpty == true
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Expanded(
                            child: Center(
                              child: Text(
                                "You don’t have a budget.\nLet’s make one so you in control.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: appTextSoft,
                                ),
                              ),
                            ),
                          ),
                          Material(
                            color: appPrimary,
                            borderRadius: BorderRadius.circular(16),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(16),
                              onTap: () {
                                Navigator.pushNamed(context, '/createBudget');
                              },
                              child: const SizedBox(
                                width: double.infinity,
                                height: 56,
                                child: Center(
                                  child: Text(
                                    "Create a budget",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: appWhite,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 50),
                        ],
                      )
                    : BudgetWidget(),
              ),
            );
          },
        ),
      ),
    );
  }
}
