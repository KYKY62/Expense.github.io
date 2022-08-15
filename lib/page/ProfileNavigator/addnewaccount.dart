import 'package:expense_tracker/utils/colors.dart';
import 'package:expense_tracker/widgets/ButtonWidget/custombutton.dart';
import 'package:flutter/material.dart';

class AddNewAccount extends StatelessWidget {
  const AddNewAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQ = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: appPrimary,
      appBar: AppBar(
        backgroundColor: appPrimary,
        elevation: 0,
        title: const Text(
          "Add new account",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
              left: 26,
              right: 26,
              top: mediaQ.height / 4,
              bottom: 7,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Balance",
                  style: TextStyle(
                    color: appTextSoft,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  "\$2000",
                  style: TextStyle(
                    color: appWhite,
                    fontSize: 64,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomSheet: BottomSheet(
        enableDrag: false,
        onClosing: () {},
        builder: (context) {
          return Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 2.2,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(24),
              ),
              color: appWhite,
            ),
            child: ListView(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: mediaQ.width / 1.5,
                        height: 56,
                        decoration: BoxDecoration(
                          color: appWhite,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(22),
                            border: InputBorder.none,
                            hintText: "Name",
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              width: mediaQ.width / 1.5,
                              height: 56,
                              decoration: BoxDecoration(
                                color: appWhite,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const TextField(
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(22),
                                  border: InputBorder.none,
                                  hintText: "Account Type",
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: const Icon(
                              Icons.keyboard_arrow_down,
                              color: appTextSoft,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        "Bank",
                        style: TextStyle(
                          fontSize: 16,
                          color: appText,
                        ),
                      ),
                      const SizedBox(height: 16),
                      GridView.count(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        crossAxisCount: 4,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                        children: [
                          Container(
                            width: 80,
                            height: 40,
                            decoration: BoxDecoration(
                              color: appVioletSoft,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child:
                                Image.asset('assets/icons/icon_bankChase.png'),
                          ),
                          Container(
                            width: 80,
                            height: 40,
                            decoration: BoxDecoration(
                              color: appVioletSoft,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Image.asset('assets/icons/icon_paypal.png'),
                          ),
                          Container(
                            width: 80,
                            height: 40,
                            decoration: BoxDecoration(
                              color: appVioletSoft,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child:
                                Image.asset('assets/icons/icon_bankCiti.png'),
                          ),
                          Container(
                            width: 80,
                            height: 40,
                            decoration: BoxDecoration(
                              color: appVioletSoft,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Image.asset('assets/icons/icon_bank.png'),
                          ),
                          Container(
                            width: 80,
                            height: 40,
                            decoration: BoxDecoration(
                              color: appVioletSoft,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child:
                                Image.asset('assets/icons/icon_bankJago.png'),
                          ),
                          Container(
                            width: 80,
                            height: 40,
                            decoration: BoxDecoration(
                              color: appVioletSoft,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Image.asset(
                                'assets/icons/icon_bankMandiri.png'),
                          ),
                          Container(
                            width: 80,
                            height: 40,
                            decoration: BoxDecoration(
                              color: appVioletSoft,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Image.asset('assets/icons/icon_bankBca.png'),
                          ),
                          Container(
                            width: 80,
                            height: 40,
                            decoration: BoxDecoration(
                              color: appVioletSoft,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child:
                                Image.asset('assets/icons/icon_bankOther.png'),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      CustomButton(
                        colorButton: appPrimary,
                        text: "Continue",
                        colorText: appWhite,
                        ontap: () {},
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
