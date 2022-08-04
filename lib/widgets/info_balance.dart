import 'package:expense_tracker/utils/colors.dart';
import 'package:flutter/material.dart';

class InfoBalance extends StatelessWidget {
  const InfoBalance({
    Key? key,
    required this.isIncome,
    required this.balance,
  }) : super(key: key);

  final bool isIncome;
  final int balance;

  @override
  Widget build(BuildContext context) {
    final responsiveWidth = MediaQuery.of(context).size.width;
    return Container(
      width: responsiveWidth * 0.4,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        color: isIncome == true ? appGreen : appRed,
      ),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: appWhite,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(isIncome == true
                ? 'assets/icons/income.png'
                : 'assets/icons/outcome.png'),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  isIncome == true ? "Income" : "Expenses",
                  style: const TextStyle(
                    color: appWhite,
                  ),
                ),
                const SizedBox(height: 4),
                FittedBox(
                  child: Text(
                    "\$$balance",
                    style: const TextStyle(
                      color: appWhite,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
