import 'package:expense_tracker/utils/colors.dart';
import 'package:expense_tracker/widgets/ProfileWidget/settinglist_widget.dart';

import 'package:flutter/material.dart';

class CurrencyPage extends StatelessWidget {
  const CurrencyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appWhite,
        centerTitle: true,
        title: const Text(
          "Currency",
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
              textCurrency: 'United States (USD)',
              imgTick: 'assets/icons/icon_checkTick.png',
              ontap: () {},
              isSelect: true,
            ),
            const SizedBox(height: 16),
            SettingListWidget(
              textCurrency: 'Indonesia (IDR)',
              imgTick: 'assets/icons/icon_checkTick.png',
              ontap: () {},
              isSelect: false,
            ),
            const SizedBox(height: 16),
            SettingListWidget(
              textCurrency: 'Japan (JPY)',
              imgTick: 'assets/icons/icon_checkTick.png',
              ontap: () {},
              isSelect: false,
            ),
            const SizedBox(height: 16),
            SettingListWidget(
              textCurrency: 'Russia (RUB)',
              imgTick: 'assets/icons/icon_checkTick.png',
              ontap: () {},
              isSelect: false,
            ),
            const SizedBox(height: 16),
            SettingListWidget(
              textCurrency: 'Germany (EUR)',
              imgTick: 'assets/icons/icon_checkTick.png',
              ontap: () {},
              isSelect: false,
            ),
            const SizedBox(height: 16),
            SettingListWidget(
              textCurrency: 'Korea (WON)',
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
