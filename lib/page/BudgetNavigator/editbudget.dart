import 'package:expense_tracker/utils/colors.dart';
import 'package:flutter/material.dart';

import 'package:slidable_button/slidable_button.dart';

class EditBudget extends StatefulWidget {
  const EditBudget({Key? key}) : super(key: key);

  @override
  State<EditBudget> createState() => _EditBudgetState();
}

class _EditBudgetState extends State<EditBudget> {
  bool isActived = false;

  double values = 80;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appPrimary,
      appBar: AppBar(
        backgroundColor: appPrimary,
        elevation: 0,
        title: const Text(
          "Edit Budget",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 26),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "How much do yo want to spend?",
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
      bottomSheet: BottomSheet(
        enableDrag: false,
        onClosing: () {},
        builder: (context) {
          return Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 3,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(24),
              ),
              color: appWhite,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Shopping",
                        style: TextStyle(
                          fontSize: 16,
                          color: appTextSoft,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.keyboard_arrow_down,
                          color: appTextSoft,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Receive Alert",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: appText,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Receive alert when it reaches\nsome point.",
                        style: TextStyle(
                          color: appTextSoft,
                        ),
                      ),
                      HorizontalSlidableButton(
                        width: 42,
                        height: 24,
                        buttonWidth: 24,
                        borderRadius: BorderRadius.circular(16),
                        color: isActived == true ? appPrimary : appVioletSoft,
                        buttonColor: appWhite,
                        disabledColor: appTextSoft,
                        onChanged: (position) {
                          setState(
                            () {
                              if (position == SlidableButtonPosition.end) {
                                isActived = true;
                              } else {
                                isActived = false;
                              }
                            },
                          );
                        },
                      )
                    ],
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                    child: Slider(
                      value: values,
                      min: 0,
                      max: 100,
                      divisions: 100,
                      activeColor: appPrimary,
                      label: values.round().toString(),
                      onChanged: (values) {
                        setState(() {
                          this.values = values;
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: 16),
                  Material(
                    color: appPrimary,
                    borderRadius: BorderRadius.circular(16),
                    child: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(16),
                      child: const SizedBox(
                        width: double.infinity,
                        height: 56,
                        child: Center(
                          child: Text(
                            "Continue",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: appWhite,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
