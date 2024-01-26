import 'package:flutter/material.dart';

class CustomMaterialButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  final Color buttonColor;
  final Color textColor;

  const CustomMaterialButton({
    required this.onPressed,
    required this.buttonText,
    required this.buttonColor,
    required this.textColor,
  }) ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: MaterialButton(
        minWidth: double.infinity,
        onPressed: onPressed,
        child: Text(buttonText),
        color: buttonColor,
        textColor: textColor,
        height: 50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );
  }
}
