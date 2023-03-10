import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_ui_flutter/config/palette.dart';
import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final String imageUrl;
  final bool isActive;
  final bool hasBorder;

  const ProfileAvatar({
    super.key,
    required this.imageUrl,
    this.isActive = false,
    this.hasBorder = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: Palette.facebookBlue,
          child: CircleAvatar(
            radius: hasBorder ? 17 : 20,
            backgroundColor: Colors.grey[200],
            backgroundImage: CachedNetworkImageProvider(imageUrl),
          ),
        ),
        isActive
            ? Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    color: Palette.online,
                    border: Border.all(
                      width: 2,
                      color: Colors.white,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}
