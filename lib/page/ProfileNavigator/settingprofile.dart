import 'package:expense_tracker/utils/colors.dart';
import 'package:expense_tracker/widgets/ProfileWidget/settingprofile_widget.dart';
import 'package:flutter/material.dart';

class SettingProfilePage extends StatelessWidget {
  const SettingProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appWhite,
        centerTitle: true,
        title: const Text("Setting",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
        elevation: 0,
        foregroundColor: appText,
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          children: [
            SettingProfileWidget(
              textSetting: 'Currency',
              ontap: () => Navigator.pushNamed(context, '/currencyPage'),
              textOption: 'USD',
            ),
            const SizedBox(height: 16),
            SettingProfileWidget(
              textSetting: 'Language',
              ontap: () => Navigator.pushNamed(context, '/languagePage'),
              textOption: 'English',
            ),
            const SizedBox(height: 16),
            SettingProfileWidget(
              textSetting: 'Theme',
              ontap: () => Navigator.pushNamed(context, '/themePage'),
              textOption: 'Dark',
            ),
            const SizedBox(height: 16),
            SettingProfileWidget(
              textSetting: 'Security',
              ontap: () => Navigator.pushNamed(context, '/securityPage'),
              textOption: 'Fingerprint',
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Notification",
                    style: TextStyle(fontSize: 16),
                  ),
                  Icon(Icons.keyboard_arrow_right),
                ],
              ),
            ),
            const SizedBox(height: 32),
            GestureDetector(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "About",
                    style: TextStyle(fontSize: 16),
                  ),
                  Icon(Icons.keyboard_arrow_right),
                ],
              ),
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Help",
                    style: TextStyle(fontSize: 16),
                  ),
                  Icon(Icons.keyboard_arrow_right),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
