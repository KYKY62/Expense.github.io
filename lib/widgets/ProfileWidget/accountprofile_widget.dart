import 'package:expense_tracker/utils/colors.dart';
import 'package:flutter/material.dart';

class AccountProfileWidget extends StatelessWidget {
  final VoidCallback ontap;
  final String imageList;
  final String text;
  final String saldo;

  const AccountProfileWidget({
    Key? key,
    required this.ontap,
    required this.imageList,
    required this.text,
    required this.saldo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Row(
        children: [
          Container(
            width: 52,
            height: 52,
            decoration: BoxDecoration(
              color: appVioletSoft,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(imageList),
          ),
          const SizedBox(width: 9),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                color: appText,
              ),
            ),
          ),
          Text(
            saldo,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: appText,
            ),
          ),
        ],
      ),
    );
  }
}
