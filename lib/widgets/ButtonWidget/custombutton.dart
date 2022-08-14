import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color colorButton;
  final String text;
  final VoidCallback ontap;
  final Color colorText;
  const CustomButton({
    Key? key,
    required this.colorButton,
    required this.text,
    required this.colorText,
    required this.ontap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      color: colorButton,
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: ontap,
        child: SizedBox(
          width: double.infinity,
          height: 56,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: colorText,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
