import 'package:facebook_ui_flutter/config/palette.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  final List<IconData> icons;
  final int selectedIndex;
  final Function(int) onTap;
  final bool isBottomIndicator;

  const CustomTabBar({
    super.key,
    required this.icons,
    required this.selectedIndex,
    required this.onTap,
    this.isBottomIndicator = false,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      padding: EdgeInsets.zero,
      indicator: BoxDecoration(
        border: isBottomIndicator
            ? const Border(
                bottom: BorderSide(color: Palette.facebookBlue, width: 3),
              )
            : const Border(
                top: BorderSide(color: Palette.facebookBlue, width: 3),
              ),
      ),
      tabs: icons
          .asMap()
          .map((index, icon) => MapEntry(
              index,
              Tab(
                icon: Icon(
                  icon,
                  color: index == selectedIndex
                      ? Palette.facebookBlue
                      : Colors.black45,
                  size: 25,
                ),
              )))
          .values
          .toList(),
      onTap: onTap,
    );
  }
}
