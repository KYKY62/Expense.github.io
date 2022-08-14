import 'package:expense_tracker/utils/colors.dart';
import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  final VoidCallback ontap;
  final String imageList;
  final String text;

  const ProfileWidget({
    Key? key,
    required this.ontap,
    required this.imageList,
    required this.text,
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
            margin: const EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
              color: appVioletSoft,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(imageList),
          ),
          const SizedBox(width: 9),
          Text(
            text,
            style: const TextStyle(
              fontSize: 16,
              color: appText,
            ),
          )
        ],
      ),
    );
  }
}
