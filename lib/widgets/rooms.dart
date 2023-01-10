import 'package:flutter/material.dart';
import 'package:facebook_ui_flutter/models/models.dart';

class Rooms extends StatelessWidget {
  final List<User> onlineUser;

  const Rooms({super.key, required this.onlineUser});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.orange,
      child: ListView.builder(
        itemCount: 1 + onlineUser.length,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 4),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.all(4),
            height: 20,
            width: 20,
            color: Colors.red,
          );
        },
      ),
    );
  }
}
