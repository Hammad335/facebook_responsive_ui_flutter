import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_ui_flutter/models/models.dart';
import 'package:flutter/material.dart';
import 'package:facebook_ui_flutter/widgets/widgets.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  const CreatePostContainer({super.key, required this.currentUser});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey[200],
                backgroundImage:
                    CachedNetworkImageProvider(currentUser.imageUrl),
              ),
              const SizedBox(width: 10),
              const Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                    hintText: 'what\'s on your mind',
                  ),
                ),
              )
            ],
          ),
          const Divider(
            height: 10,
            thickness: 0.5,
          ),
          Container(
            height: 40,
            padding: const EdgeInsets.symmetric(vertical: 3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CustomIconButton(
                  iconData: Icons.videocam,
                  labelText: 'Live',
                  iconColor: Colors.red,
                ),
                VerticalDivider(width: 10),
                CustomIconButton(
                  iconData: Icons.photo_library,
                  labelText: 'Photo',
                  iconColor: Colors.green,
                ),
                VerticalDivider(width: 10),
                CustomIconButton(
                  iconData: Icons.video_call,
                  labelText: 'Room',
                  iconColor: Colors.purpleAccent,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
