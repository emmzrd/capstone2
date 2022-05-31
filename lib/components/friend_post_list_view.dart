import 'package:capstone2_jobhub2/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:capstone2_jobhub2/models/models.dart';
import 'package:capstone2_jobhub2/components/components.dart';
import 'package:capstone2_jobhub2/screens/search_screen.dart';

class FriendPostListView extends StatefulWidget {
  final List<Post> friendPosts;

  FriendPostListView({
    Key? key,
    required this.friendPosts,
  }) : super(key: key);

  @override
  State<FriendPostListView> createState() => _FriendPostListViewState();
}

class _FriendPostListViewState extends State<FriendPostListView> {
  bool showAll = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              const Text(
                'Recent Post',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: kFontPoppins,
                  fontWeight: FontWeight.w600,
                  color: kColor1A1D1EBlack,
                ),
              ),
              Spacer(),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SearchScreen()));
                },
                child: Text(
                  'Show All',
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: kFontPoppins,
                    fontWeight: FontWeight.w400,
                    color: kColor6A6A6AGrey,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          // PostListView
          ListView.separated(
            primary: false,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              final post = widget.friendPosts[index];
              return FriendPostTile(post: post);
            },
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 20,
              );
            },
            itemCount: widget.friendPosts.length,
          ),
          const SizedBox(
            height: 16,
          )
        ],
      ),
    );
  }
}
