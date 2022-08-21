import 'package:flutter/material.dart';

import 'package:expense_tracker/utils/colors.dart';

class BudgetItem extends StatelessWidget {
  const BudgetItem({
    Key? key,
    required this.ontap,
    required this.titleBudget,
    required this.titleColor,
    required this.budgetCount,
    required this.restbudget,
    required this.valueColor,
    required this.notifLimit,
    required this.notifWarning,
  }) : super(key: key);
  final VoidCallback ontap;
  final String titleBudget;
  final Color titleColor;
  final String budgetCount;
  final String restbudget;
  final Color valueColor;
  final bool notifLimit;
  final bool notifWarning;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          margin: const EdgeInsets.only(bottom: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 5),
                    width: 14,
                    height: 14,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: titleColor),
                  ),
                  Expanded(
                    child: Text(
                      titleBudget,
                      style: const TextStyle(
                        color: appText,
                      ),
                    ),
                  ),
                  notifWarning == false
                      ? const SizedBox()
                      : Image.asset('assets/icons/icon_warning.png'),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                "Remaining $budgetCount",
                style: const TextStyle(
                  fontSize: 24,
                  color: appText,
                ),
              ),
              const SizedBox(height: 5),
              Container(
                width: double.infinity,
                height: 10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16), color: valueColor),
              ),
              const SizedBox(height: 8),
              Text(
                restbudget,
                style: const TextStyle(
                  fontSize: 16,
                  color: appTextSoft,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                notifLimit == false ? "" : "You’ve exceed the limit!",
                style: const TextStyle(
                  fontSize: 16,
                  color: appRed,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
