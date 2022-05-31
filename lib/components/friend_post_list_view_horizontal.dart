import 'package:capstone2_jobhub2/components/constants.dart';
import 'package:capstone2_jobhub2/models/registered_users.dart';
import 'package:capstone2_jobhub2/screens/applications_screen.dart';
import 'package:capstone2_jobhub2/screens/form_apply_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:capstone2_jobhub2/models/models.dart';
import 'package:capstone2_jobhub2/components/components.dart';
import 'package:capstone2_jobhub2/components/friend_post_tile_horizontal.dart';
import 'package:provider/provider.dart';
import 'package:side_sheet/side_sheet.dart';
import 'package:capstone2_jobhub2/screens/search_screen.dart';
import 'package:capstone2_jobhub2/screens/filters_screen.dart';

import '../screens/settings_screen.dart';

class FriendPostListViewHorizontal extends StatefulWidget {
  final List<Post> friendPosts;

  FriendPostListViewHorizontal({
    Key? key,
    required this.friendPosts,
  }) : super(key: key);

  @override
  State<FriendPostListViewHorizontal> createState() =>
      _FriendPostListViewHorizontalState();
}

class _FriendPostListViewHorizontalState
    extends State<FriendPostListViewHorizontal> {
  bool showAll = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 70,
                width: 70,
                child: IconButton(
                  onPressed: () {
                    SideSheet.left(
                        body: SafeArea(
                          child: Container(
                            margin: EdgeInsets.only(left: 30, right: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CircleImage(
                                  imageProvider: AssetImage(
                                    Provider.of<RegisteredUsers>(context,
                                            listen: false)
                                        .imageUrl,
                                  ),
                                  imageRadius: 55,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  Provider.of<RegisteredUsers>(context,
                                          listen: false)
                                      .name,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: kFontPoppins,
                                    fontWeight: FontWeight.w500,
                                    color: kColor1A1D1EBlack,
                                  ),
                                ),
                                Text(
                                  Provider.of<RegisteredUsers>(context,
                                          listen: false)
                                      .email,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: kFontPoppins,
                                    fontWeight: FontWeight.w400,
                                    color: kColor6A6A6AGrey,
                                  ),
                                ),
                                SizedBox(
                                  height: 45,
                                ),
                                HomeSideBarIcons(
                                  iconPic: Icons.person,
                                  iconBackground: kColorFF5441Orange,
                                  iconText: 'Edit Profile',
                                  onPressed: () {},
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                HomeSideBarIcons(
                                  iconPic: Icons.access_time_filled_rounded,
                                  iconBackground: kColorFF9087Peach,
                                  iconText:
                                      'Applications (${applicationsPost.length})',
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            ApplicationsScreen(
                                                applicationsPost:
                                                    applicationsPost),
                                      ),
                                    );
                                  },
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                HomeSideBarIcons(
                                  iconPic: Icons.settings,
                                  iconBackground: kColor4CA6A8CyanGreen,
                                  iconText: 'Notifications Settings',
                                  onPressed: () {
                                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingsScreen()));
                                  },
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                HomeSideBarIcons(
                                  iconPic: CupertinoIcons.heart_solid,
                                  iconBackground: kColorFE33BFPink,
                                  iconText: 'Share App',
                                  onPressed: () {},
                                ),
                                SizedBox(
                                  height: 140,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 60,
                                      width: 60,
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Image.asset(
                                            'assets/images/logout_icon.png'),
                                      ),
                                    ),
                                    Text(
                                      'Log Out',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: kFontPoppins,
                                        fontWeight: FontWeight.w400,
                                        color: kColor1A1D1EBlack,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        context: context);
                    //menu button
                  },
                  icon: Image.asset('assets/images/menu.png'),
                ),
              ),
              Spacer(),
              CircleImage(
                imageProvider: AssetImage(
                  Provider.of<RegisteredUsers>(context, listen: false).imageUrl,
                ),
                imageRadius: 30,
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search here...',
                    hintStyle: TextStyle(
                        color: kColor6A6A6AGrey,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(15)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Container(
                height: 70,
                width: 70,
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FiltersScreen()),
                    );
                  },
                  icon: Image.asset('assets/images/filter_icon.png'),
                ),
              ),
            ],
          ),

          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              const Text(
                'Popular Job',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: kFontPoppins,
                    fontWeight: FontWeight.w600,
                    color: kColor1A1D1EBlack),
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
          Container(
            height: 200,
            child: ListView.separated(
              primary: false,
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final post = widget.friendPosts[index];
                return FriendPostTileHorizontal(post: post);
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 20,
                );
              },
              itemCount: 3,
            ),
          ),
          const SizedBox(
            height: 16,
          )
        ],
      ),
    );
  }
}

class HomeSideBarIcons extends StatelessWidget {
  HomeSideBarIcons(
      {Key? key,
      required this.iconPic,
      required this.iconBackground,
      required this.iconText,
      required this.onPressed})
      : super(key: key);
  var iconPic;

  var iconBackground;
  String iconText;
  var onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Row(
        children: [
          Container(
            child: Icon(
              iconPic,
              color: Colors.white,
            ),
            height: 36,
            width: 36,
            decoration: BoxDecoration(
              color: iconBackground,
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            iconText,
            style: TextStyle(
              fontSize: 16,
              fontFamily: kFontPoppins,
              fontWeight: FontWeight.w400,
              color: kColor1A1D1EBlack,
            ),
          ),
        ],
      ),
    );
  }
}
