import 'package:expense_tracker/utils/colors.dart';
import 'package:expense_tracker/widgets/ProfileWidget/profile_widget.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQ = MediaQuery.of(context).size;
    return SafeArea(
      child: Column(
        children: [
          Container(
            margin:
                const EdgeInsets.only(top: 30, left: 34, right: 16, bottom: 40),
            child: Row(
              children: [
                Image.asset('assets/icons/pic_profile.png'),
                const SizedBox(width: 19),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Username",
                        style: TextStyle(
                          color: appTextSoft,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Iriana Saliha",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: appText,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset('assets/icons/icon_createProfile.png'),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 15),
            width: double.infinity,
            height: mediaQ.height / 2.3,
            decoration: BoxDecoration(
              color: appWhite,
              borderRadius: BorderRadius.circular(24),
              boxShadow: [
                BoxShadow(
                  color: appText.withOpacity(0.7),
                  spreadRadius: 0,
                  blurRadius: 0.5,
                  offset: const Offset(0, 0),
                )
              ],
            ),
            child: Column(
              children: [
                ProfileWidget(
                  ontap: () => Navigator.pushNamed(context, '/accountProfile'),
                  imageList: 'assets/icons/icon_wallet.png',
                  text: 'Account',
                ),
                const SizedBox(height: 19),
                ProfileWidget(
                  ontap: () {},
                  imageList: 'assets/icons/icon_setting.png',
                  text: 'Settings',
                ),
                const SizedBox(height: 19),
                ProfileWidget(
                  ontap: () {},
                  imageList: 'assets/icons/icon_export.png',
                  text: 'Export Data',
                ),
                const SizedBox(height: 19),
                ProfileWidget(
                  ontap: () {},
                  imageList: 'assets/icons/icon_logout.png',
                  text: 'Logout',
                ),
                const SizedBox(height: 19),
              ],
            ),
          )
        ],
      ),
    );
  }
}
