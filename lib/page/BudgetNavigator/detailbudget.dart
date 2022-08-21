import 'package:expense_tracker/utils/colors.dart';
import 'package:expense_tracker/widgets/ButtonWidget/custombutton.dart';
import 'package:expense_tracker/widgets/budget%20widget/budget_bottomsheet.dart';
import 'package:flutter/material.dart';

class DetailBudget extends StatefulWidget {
  const DetailBudget({Key? key}) : super(key: key);

  @override
  State<DetailBudget> createState() => _DetailBudgetState();
}

class _DetailBudgetState extends State<DetailBudget> {
  Future<void> bottomsheetwidget(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: MediaQuery.of(context).size.height / 3,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(24),
            ),
            color: appWhite,
          ),
          child: const BudgetBottomSheet(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appWhite,
        foregroundColor: appText,
        centerTitle: true,
        title: const Text(
          "Detail Budget",
          style: TextStyle(fontSize: 18),
        ),
        elevation: 0,
        actions: [
          GestureDetector(
            onTap: () {
              setState(() {
                bottomsheetwidget(context);
              });
            },
            child: Image.asset('assets/icons/icon_delete.png'),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                children: [
                  Center(
                    child: Container(
                      margin: const EdgeInsets.only(top: 37),
                      width: 158,
                      height: 64,
                      decoration: BoxDecoration(
                        border: Border.all(color: appTextSoft, width: 1),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('assets/icons/icon_shop.png'),
                          const SizedBox(width: 8),
                          const Text(
                            "Shopping",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: appText),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                  const Text(
                    "Remaining",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: appText),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    "\$0",
                    style: TextStyle(
                        fontSize: 64,
                        fontWeight: FontWeight.w600,
                        color: appText),
                  ),
                  const SizedBox(height: 32),
                  Container(
                    width: double.infinity,
                    height: 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: appYellow,
                    ),
                  ),
                  const SizedBox(height: 32),
                  Container(
                    width: 218,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: appRed,
                    ),
                    child: Center(
                      child: Row(
                        children: [
                          Image.asset('assets/icons/icon_warning.png'),
                          const SizedBox(width: 8),
                          const Text(
                            "You’ve exceed the limit",
                            style: TextStyle(color: appWhite),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 32),
            child: CustomButton(
              colorButton: appPrimary,
              text: "Edit",
              colorText: appWhite,
              ontap: () => Navigator.pushNamed(context, '/editBudget'),
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
