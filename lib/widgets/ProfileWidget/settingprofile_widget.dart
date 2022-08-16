import 'package:expense_tracker/utils/colors.dart';
import 'package:flutter/material.dart';

class SettingProfileWidget extends StatelessWidget {
  final String textSetting;
  final VoidCallback ontap;
  final String textOption;

  const SettingProfileWidget({
    Key? key,
    required this.textSetting,
    required this.ontap,
    required this.textOption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            textSetting,
            style: const TextStyle(fontSize: 16),
          ),
          SizedBox(
            child: Row(
              children: [
                Text(
                  textOption,
                  style: const TextStyle(color: appTextSoft),
                ),
                const Icon(Icons.keyboard_arrow_right),
              ],
            ),
          )
        ],
      ),
    );
  }
}
