import 'package:expense_tracker/models/transaction_model.dart';
import 'package:expense_tracker/utils/colors.dart';
import 'package:expense_tracker/widgets/ButtonWidget/custombutton.dart';
import 'package:expense_tracker/widgets/filter_widget.dart';
import 'package:flutter/material.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({Key? key}) : super(key: key);

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  int currentColor = 1;
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
  ];

  final List<TransactionData> transactionData1 = [
    TransactionData(
      "assets/icons/icon_salary.png",
      "Salary",
      "Salary for July",
      "+ 5000",
      "04:30 PM",
    ),
    TransactionData(
      "assets/icons/icon_transport.png",
      "Transportation",
      "Charging Tesla",
      "- \$18",
      "08:30 PM",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    Future<void> bottomsheetWidget(BuildContext context) {
      return showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: MediaQuery.of(context).size.height / 2,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(24),
              ),
              color: appWhite,
            ),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        margin: const EdgeInsets.only(top: 16),
                        width: 46,
                        height: 5,
                        decoration: BoxDecoration(
                          color: appVioletSoft,
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Filter Transaction',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Container(
                          width: 71,
                          height: 32,
                          decoration: BoxDecoration(
                            color: appVioletSoft,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: const Center(
                            child: Text(
                              'Reset',
                              style: TextStyle(
                                color: appPrimary,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 22),
                    FilterWidget(
                      title: "Flter By",
                      filterBy1: "Income",
                      filterBy2: "Expanse",
                      filterBy3: "Transfer",
                      isAvaible: false,
                    ),
                    const SizedBox(height: 16),
                    FilterWidget(
                      title: "Sort By",
                      filterBy1: "Highest",
                      filterBy2: "Lowest",
                      filterBy3: "Newest",
                      isAvaible: true,
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      "Category",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Choose Category',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          children: const [
                            Text(
                              '0 Selected',
                              style: TextStyle(
                                color: appTextSoft,
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_right,
                              color: appPrimary,
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 16),
                    CustomButton(
                      colorButton: appPrimary,
                      text: "Apply",
                      colorText: appWhite,
                      ontap: () {},
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ),
          );
        },
      );
    }

    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Column(
              children: [
                // WithOut Scrool
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color: appPrimary,
                          ),
                          Text("Month"),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            bottomsheetWidget(context);
                          });
                        },
                        child: const Icon(
                          Icons.filter_list_sharp,
                          size: 24,
                          color: appText,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  width: double.infinity,
                  height: 64,
                  decoration: BoxDecoration(
                    color: appVioletSoft,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(22),
                      border: InputBorder.none,
                      hintText: "See your financial report",
                      suffixIcon: Icon(
                        Icons.chevron_right_sharp,
                        color: appPrimary,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Today",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
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
                          const EdgeInsets.symmetric(horizontal: 30),
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
                                      transactionData.elementAt(index).title,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      transactionData.elementAt(index).price,
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
                                      transactionData.elementAt(index).subTitle,
                                      style: const TextStyle(
                                        color: appTextSoft,
                                      ),
                                    ),
                                    Text(
                                      transactionData.elementAt(index).dtime,
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
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Yesterday",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
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
                  itemCount: transactionData1.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 30),
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
                                transactionData1.elementAt(index).icon),
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
                                      transactionData1.elementAt(index).title,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      transactionData1.elementAt(index).price,
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
                                      transactionData1
                                          .elementAt(index)
                                          .subTitle,
                                      style: const TextStyle(
                                        color: appTextSoft,
                                      ),
                                    ),
                                    Text(
                                      transactionData1.elementAt(index).dtime,
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
          ],
        ),
      ),
    );
  }
}
