import 'package:facebook_ui_flutter/config/palette.dart';
import 'package:facebook_ui_flutter/models/models.dart';
import 'package:facebook_ui_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final User currentUser;
  final List<IconData> icons;
  final int selectedIndex;
  final Function(int) onTap;

  const CustomAppBar({
    super.key,
    required this.currentUser,
    required this.icons,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 2),
            blurRadius: 4,
          ),
        ],
      ),
      child: Row(
        children: [
          const Text(
            'facebook',
            style: TextStyle(
              color: Palette.facebookBlue,
              fontSize: 32,
              fontWeight: FontWeight.bold,
              letterSpacing: -1.2,
            ),
          ),
          SizedBox(
            width: 600,
            child: CustomTabBar(
              icons: icons,
              selectedIndex: selectedIndex,
              onTap: onTap,
            ),
          ),
        ],
      ),
    );
  }
}
