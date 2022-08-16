import 'package:expense_tracker/utils/colors.dart';
import 'package:expense_tracker/widgets/ProfileWidget/settinglist_widget.dart';
import 'package:expense_tracker/widgets/ProfileWidget/settingprofile_widget.dart';
import 'package:flutter/material.dart';

class SettingLanguagePage extends StatelessWidget {
  const SettingLanguagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appWhite,
        centerTitle: true,
        title: const Text(
          "Language",
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
              textCurrency: 'English (EN)',
              imgTick: 'assets/icons/icon_checkTick.png',
              ontap: () {},
              isSelect: true,
            ),
            const SizedBox(height: 16),
            SettingListWidget(
              textCurrency: 'Indonesian (ID)',
              imgTick: 'assets/icons/icon_checkTick.png',
              ontap: () {},
              isSelect: false,
            ),
            const SizedBox(height: 16),
            SettingListWidget(
              textCurrency: 'Arabic (AR)',
              imgTick: 'assets/icons/icon_checkTick.png',
              ontap: () {},
              isSelect: false,
            ),
            const SizedBox(height: 16),
            SettingListWidget(
              textCurrency: 'Chinese (ZH)',
              imgTick: 'assets/icons/icon_checkTick.png',
              ontap: () {},
              isSelect: false,
            ),
            const SizedBox(height: 16),
            SettingListWidget(
              textCurrency: 'Dutch (NL)',
              imgTick: 'assets/icons/icon_checkTick.png',
              ontap: () {},
              isSelect: false,
            ),
            const SizedBox(height: 16),
            SettingListWidget(
              textCurrency: 'French (FR)',
              imgTick: 'assets/icons/icon_checkTick.png',
              ontap: () {},
              isSelect: false,
            ),
            const SizedBox(height: 16),
            SettingListWidget(
              textCurrency: 'German (DE)',
              imgTick: 'assets/icons/icon_checkTick.png',
              ontap: () {},
              isSelect: false,
            ),
            const SizedBox(height: 16),
            SettingListWidget(
              textCurrency: 'Italian (IT)',
              imgTick: 'assets/icons/icon_checkTick.png',
              ontap: () {},
              isSelect: false,
            ),
            const SizedBox(height: 16),
            SettingListWidget(
              textCurrency: 'Korean (KO)',
              imgTick: 'assets/icons/icon_checkTick.png',
              ontap: () {},
              isSelect: false,
            ),
            const SizedBox(height: 16),
            SettingListWidget(
              textCurrency: 'Portuguese (PT)',
              imgTick: 'assets/icons/icon_checkTick.png',
              ontap: () {},
              isSelect: false,
            ),
            const SizedBox(height: 16),
            SettingListWidget(
              textCurrency: 'Russian (RU)',
              imgTick: 'assets/icons/icon_checkTick.png',
              ontap: () {},
              isSelect: false,
            ),
            const SizedBox(height: 16),
            SettingListWidget(
              textCurrency: 'Spanish (ES)',
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
