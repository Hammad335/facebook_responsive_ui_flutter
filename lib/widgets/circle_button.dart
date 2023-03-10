import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final IconData iconData;
  final double iconSize;
  final VoidCallback onPressed;

  const CircleButton({
    super.key,
    required this.iconData,
    required this.iconSize,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        shape: BoxShape.circle,
      ),
      child: IconButton(
        padding: EdgeInsets.zero,
        onPressed: onPressed,
        highlightColor: Colors.transparent,
        splashRadius: 1,
        icon: Icon(
          iconData,
          size: iconSize,
          color: Colors.black,
        ),
      ),
    );
  }
}
