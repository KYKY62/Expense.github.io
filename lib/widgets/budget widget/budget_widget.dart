import 'package:expense_tracker/utils/colors.dart';
import 'package:expense_tracker/widgets/budget%20widget/budget_item.dart';
import 'package:flutter/material.dart';

class BudgetWidget extends StatelessWidget {
  const BudgetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      margin: const EdgeInsets.only(top: 32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BudgetItem(
            ontap: () {},
            titleColor: appYellow,
            titleBudget: "Shopping",
            budgetCount: "\$0",
            restbudget: "\$1200 of \$1000",
            valueColor: appYellow,
            notifLimit: true,
            notifWarning: true,
          ),
          BudgetItem(
            ontap: () {},
            titleColor: appBlue,
            titleBudget: "Transportation",
            budgetCount: "\$350",
            restbudget: "\$350 of \$700",
            valueColor: appBlue,
            notifLimit: false,
            notifWarning: false,
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
      ),
    );
  }
}
