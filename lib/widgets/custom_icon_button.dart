import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final IconData iconData;
  final String labelText;
  final Color iconColor;

  const CustomIconButton(
      {super.key,
      required this.iconData,
      required this.labelText,
      required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () => print(labelText),
      icon: Icon(
        iconData,
        color: iconColor,
      ),
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all<Color>(
          Colors.black12.withOpacity(0.03),
        ),
        backgroundColor: MaterialStateProperty.all(Colors.transparent),
        elevation: MaterialStateProperty.all(0),
      ),
      label: Text(
        labelText,
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}
