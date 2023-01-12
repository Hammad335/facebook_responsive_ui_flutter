import 'package:facebook_ui_flutter/models/models.dart';
import 'package:flutter/material.dart';
import 'package:facebook_ui_flutter/widgets/widgets.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  const CreatePostContainer({super.key, required this.currentUser});

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = Responsive.isDesktop(context);
    return Card(
      margin: EdgeInsets.symmetric(horizontal: isDesktop ? 5 : 0),
      elevation: isDesktop ? 1 : 0,
      shape: isDesktop
          ? RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
          : null,
      child: Container(
        padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: isDesktop ? BorderRadius.circular(10) : null,
        ),
        child: Column(
          children: [
            Row(
              children: [
                ProfileAvatar(imageUrl: currentUser.imageUrl),
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
      ),
    );
  }
}
