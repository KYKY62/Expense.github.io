import 'package:flutter/material.dart';

class SettingListWidget extends StatelessWidget {
  final String textCurrency;
  final String imgTick;
  final VoidCallback ontap;
  final bool isSelect;

  const SettingListWidget({
    Key? key,
    required this.textCurrency,
    required this.imgTick,
    required this.ontap,
    required this.isSelect,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            textCurrency,
            style: const TextStyle(fontSize: 16),
          ),
          isSelect == true ? Image.asset(imgTick) : const SizedBox(),
        ],
      ),
    );
  }
}
