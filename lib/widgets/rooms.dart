import 'package:facebook_ui_flutter/config/palette.dart';
import 'package:facebook_ui_flutter/widgets/profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:facebook_ui_flutter/models/models.dart';

import 'widgets.dart';

class Rooms extends StatelessWidget {
  final List<User> onlineUser;

  const Rooms({super.key, required this.onlineUser});

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
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: isDesktop ? BorderRadius.circular(10) : null,
        ),
        child: ListView.builder(
          itemCount: 1 + onlineUser.length,
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 4),
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: _CreateRoomButton(),
              );
            }
            final User user = onlineUser[index - 1];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: ProfileAvatar(
                imageUrl: user.imageUrl,
                isActive: true,
              ),
            );
          },
        ),
      ),
    );
  }
}

class _CreateRoomButton extends StatelessWidget {
  const _CreateRoomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () => print('create room'),
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        side: BorderSide(
          width: 3,
          color: Colors.blueAccent[100]!,
        ),
        textStyle: TextStyle(color: Palette.facebookBlue),
      ),
      child: Row(
        children: const [
          // ShaderMask(
          //   shaderCallback: (Rect bounds) =>
          //       Palette.createRoomGradient.createShader(bounds),
          //   child: const Icon(
          //     Icons.video_call,
          //     size: 35,
          //     color: Colors.white,
          //   ),
          // ),
          Icon(
            Icons.video_call,
            size: 35,
            color: Colors.purple,
          ),
          SizedBox(width: 4),
          Text('Create\nRoom'),
        ],
      ),
    );
  }
}
