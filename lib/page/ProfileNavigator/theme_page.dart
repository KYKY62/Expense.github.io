import 'package:expense_tracker/utils/colors.dart';
import 'package:expense_tracker/widgets/ProfileWidget/settinglist_widget.dart';
import 'package:flutter/material.dart';

class SettingThemePage extends StatelessWidget {
  const SettingThemePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appWhite,
        centerTitle: true,
        title: const Text(
          "Theme",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        elevation: 0,
        foregroundColor: appText,
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          children: [
            SettingListWidget(
              textCurrency: 'Light',
              imgTick: 'assets/icons/icon_checkTick.png',
              ontap: () {},
              isSelect: true,
            ),
            const SizedBox(height: 16),
            SettingListWidget(
              textCurrency: 'Dark',
              imgTick: 'assets/icons/icon_checkTick.png',
              ontap: () {},
              isSelect: false,
            ),
            const SizedBox(height: 16),
            SettingListWidget(
              textCurrency: 'Use device theme',
              imgTick: 'assets/icons/icon_checkTick.png',
              ontap: () {},
              isSelect: false,
            ),
          ],
        ),
      ),
    );
  }
}
