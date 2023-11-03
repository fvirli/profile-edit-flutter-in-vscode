import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  CustomButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.blueAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      ),
      onPressed: () {
        onPressed();
      },
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 14,
        ),
      ),
    );
  }
}
