import 'package:flutter/material.dart';

class WelcomeButton extends StatelessWidget {
  final String buttonText;
  final Color color;
  final Color textColor;
  final VoidCallback? onPressed; // Add this line

  const WelcomeButton({
    Key? key,
    required this.buttonText,
    required this.color,
    required this.textColor,
    this.onPressed, // Add this line
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed, // Add this line
      style: TextButton.styleFrom(
        backgroundColor: color,
      ),
      child: Text(buttonText),
    );
  }
}
