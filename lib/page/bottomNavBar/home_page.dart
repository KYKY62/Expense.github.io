import 'package:expense_tracker/models/transaction_model.dart';
import 'package:expense_tracker/utils/colors.dart';
import 'package:expense_tracker/widgets/graphic.dart';
import 'package:expense_tracker/widgets/info_balance.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<TransactionData> transactionData = [
    TransactionData(
      "assets/icons/icon_shop.png",
      "Shopping",
      "Buy some grocery",
      "- \$120",
      "10:00 AM",
    ),
    TransactionData(
      "assets/icons/icon_subs.png",
      "Subscription",
      "Disney+ Annual..",
      "- \$80",
      "03:30 PM",
    ),
    TransactionData(
      "assets/icons/icon_food.png",
      "Food",
      "Buy a ramen",
      "- \$32",
      "07:30 PM",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                appYellowSoft,
                appVioletSoft,
              ],
            ),
          ),
        ),
        // Page View
        SafeArea(
          child: Column(
            children: [
              // WithOut Scrool
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      child: Image.asset('assets/icons/avatar.png'),
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: appPrimary,
                        ),
                        Text("Oktober"),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notifications_active,
                        color: appPrimary,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Account Balance",
                style: TextStyle(
                  color: appTextSoft,
                ),
              ),
              const SizedBox(height: 9),
              const Text(
                "\$9400",
                style: TextStyle(
                    color: appText, fontSize: 40, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 27),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  InfoBalance(
                    isIncome: true,
                    balance: 5000,
                  ),
                  InfoBalance(
                    isIncome: false,
                    balance: 1200,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // With Scrool
              Expanded(
                child: ListView(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "Spend Frequency",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    const SizedBox(height: 15),
                    GraphicFrequency(),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5,
                          ),
                          decoration: BoxDecoration(
                              color: appYellowSoft,
                              borderRadius: BorderRadius.circular(16)),
                          child: const Center(
                            child: Text(
                              "Today",
                              style: TextStyle(
                                color: appYellow,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          "Week",
                          style: TextStyle(
                            color: appTextSoft,
                          ),
                        ),
                        const Text(
                          "Month",
                          style: TextStyle(
                            color: appTextSoft,
                          ),
                        ),
                        const Text(
                          "Year",
                          style: TextStyle(
                            color: appTextSoft,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Recent Transaction",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 5,
                            ),
                            decoration: BoxDecoration(
                              color: appVioletSoft,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: const Center(
                              child: Text(
                                "See All",
                                style: TextStyle(
                                    color: appPrimary,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    ListView.separated(
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 15),
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: transactionData.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 40),
                          title: Row(
                            children: [
                              Container(
                                width: 80,
                                height: 80,
                                margin: const EdgeInsets.only(right: 15),
                                decoration: BoxDecoration(
                                  color: appYellowSoft,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Image.asset(
                                    transactionData.elementAt(index).icon),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "${transactionData.elementAt(index).title}",
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          "${transactionData.elementAt(index).price}",
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: appRed,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "${transactionData.elementAt(index).subTitle}",
                                          style: const TextStyle(
                                            color: appTextSoft,
                                          ),
                                        ),
                                        Text(
                                          "${transactionData.elementAt(index).dtime}",
                                          style: const TextStyle(
                                            color: appTextSoft,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 50),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
