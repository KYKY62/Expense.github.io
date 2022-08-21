import 'package:expense_tracker/utils/colors.dart';
import 'package:expense_tracker/widgets/ButtonWidget/custombutton.dart';
import 'package:expense_tracker/widgets/ProfileWidget/accountprofile_widget.dart';
import 'package:flutter/material.dart';

class AccountProfile extends StatelessWidget {
  const AccountProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appWhite,
        elevation: 0,
        foregroundColor: appText,
        centerTitle: true,
        title: const Text(
          "Account",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: appText,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            child: Stack(
              children: [
                Image.asset(
                  'assets/icons/bg_account.png',
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
                const Positioned(
                  top: 100,
                  left: 140,
                  child: Text(
                    "Account Balance",
                    style: TextStyle(
                      color: appTextSoft,
                    ),
                  ),
                ),
                const Positioned(
                  top: 128,
                  left: 135,
                  child: Text(
                    "\$9400",
                    style: TextStyle(
                      color: appText,
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                children: [
                  AccountProfileWidget(
                    ontap: () {},
                    imageList: 'assets/icons/icon_wallet.png',
                    text: 'Account',
                    saldo: '\$400',
                  ),
                  const SizedBox(height: 19),
                  AccountProfileWidget(
                    ontap: () {},
                    imageList: 'assets/icons/icon_bankChase.png',
                    text: 'Chase',
                    saldo: '\$1000',
                  ),
                  const SizedBox(height: 19),
                  AccountProfileWidget(
                    ontap: () {},
                    imageList: 'assets/icons/icon_bankCiti.png',
                    text: 'Citi',
                    saldo: '\$6000',
                  ),
                  const SizedBox(height: 19),
                  AccountProfileWidget(
                    ontap: () {},
                    imageList: 'assets/icons/icon_paypal.png',
                    text: 'Paypal',
                    saldo: '\$2000',
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: CustomButton(
              colorButton: appPrimary,
              text: "+ Add new wallet",
              colorText: appWhite,
              ontap: () => Navigator.pushNamed(context, '/addnewaccount'),
            ),
          )
        ],
      ),
    );
  }
}
