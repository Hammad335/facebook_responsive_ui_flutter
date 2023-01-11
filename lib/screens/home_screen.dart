import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:facebook_ui_flutter/widgets/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../config/palette.dart';
import '../data/data.dart';
import '../models/models.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (OverscrollIndicatorNotification overscroll) {
            overscroll.disallowIndicator();
            return true;
          },
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                systemOverlayStyle: SystemUiOverlayStyle.light,
                backgroundColor: Colors.white,
                floating: true,
                snap: true,
                title: const Text(
                  'facebook',
                  style: TextStyle(
                    color: Palette.facebookBlue,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    letterSpacing: -1.2,
                  ),
                ),
                centerTitle: false,
                actions: [
                  CircleButton(
                    iconData: Icons.search,
                    iconSize: 30,
                    onPressed: () => print('search'),
                  ),
                  CircleButton(
                    iconData: MdiIcons.facebookMessenger,
                    iconSize: 30,
                    onPressed: () => print('messenger'),
                  ),
                ],
              ),
              const SliverToBoxAdapter(
                child: CreatePostContainer(currentUser: currentUser),
              ),
              SliverPadding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
                sliver: SliverToBoxAdapter(
                  child: Rooms(onlineUser: onlineUsers),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                sliver: SliverToBoxAdapter(
                  child: Stories(
                    currentUser: currentUser,
                    stories: stories,
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: posts.length,
                  (context, index) {
                    final Post post = posts[index];
                    return PostContainer(post: post);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
