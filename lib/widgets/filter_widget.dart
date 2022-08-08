import 'package:expense_tracker/utils/colors.dart';
import 'package:flutter/material.dart';

class FilterWidget extends StatefulWidget {
  final String title;
  final String filterBy1;
  final String filterBy2;
  final String filterBy3;
  final bool isAvaible;
  FilterWidget({
    required this.title,
    required this.filterBy1,
    required this.filterBy2,
    required this.filterBy3,
    required this.isAvaible,
  });

  @override
  State<FilterWidget> createState() => _FilterWidgetState();
}

class _FilterWidgetState extends State<FilterWidget> {
  int currentColor = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  currentColor = 0;
                });
              },
              child: Container(
                width: 98,
                height: 42,
                decoration: BoxDecoration(
                  color: currentColor == 0 ? appVioletSoft : appWhite,
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                    color: currentColor == 0 ? appWhite : appTextSoft,
                  ),
                ),
                child: Center(
                  child: Text(
                    widget.filterBy1,
                    style: TextStyle(
                      color: currentColor == 0 ? appPrimary : appText,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  currentColor = 1;
                });
              },
              child: Container(
                width: 98,
                height: 42,
                decoration: BoxDecoration(
                  color: currentColor == 1 ? appVioletSoft : appWhite,
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                    color: currentColor == 1 ? appWhite : appTextSoft,
                  ),
                ),
                child: Center(
                  child: Text(
                    widget.filterBy2,
                    style: TextStyle(
                      color: currentColor == 1 ? appPrimary : appText,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  currentColor = 2;
                });
              },
              child: Container(
                width: 98,
                height: 42,
                decoration: BoxDecoration(
                  color: currentColor == 2 ? appVioletSoft : appWhite,
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                    color: currentColor == 2 ? appWhite : appTextSoft,
                  ),
                ),
                child: Center(
                  child: Text(
                    widget.filterBy3,
                    style: TextStyle(
                      color: currentColor == 2 ? appPrimary : appText,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        widget.isAvaible == true
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    currentColor = 3;
                  });
                },
                child: Container(
                  width: 98,
                  height: 42,
                  decoration: BoxDecoration(
                    color: currentColor == 3 ? appVioletSoft : appWhite,
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(
                      color: currentColor == 3 ? appWhite : appTextSoft,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      widget.filterBy3,
                      style: TextStyle(
                        color: currentColor == 3 ? appPrimary : appText,
                      ),
                    ),
                  ),
                ),
              )
            : SizedBox(),
      ],
    );
  }
}
