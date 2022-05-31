import 'package:capstone2_jobhub2/components/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:capstone2_jobhub2/components/components.dart';
import 'package:capstone2_jobhub2/models/models.dart';
import 'package:capstone2_jobhub2/screens/apply_screen.dart';

class FriendPostTileHorizontal extends StatelessWidget {
  final Post post;

  const FriendPostTileHorizontal({
    Key? key,
    required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ApplyScreen(
              post: post,
            ),
          ),
        );
      },
      child: Container(
        width: 260,
        height: 160,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.white),
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  child: Image.asset(post.profileImageUrl),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: kColorE4F2FFLightBlue),
                ),
                Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ))
              ],
            ),
            Text(
              post.company,
              style: TextStyle(
                  fontSize: 12,
                  fontFamily: kFontPoppins,
                  fontWeight: FontWeight.w400,
                  color: kColor6A6A6AGrey),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              post.position,
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: kFontPoppins,
                  color: kColor1A1D1EBlack,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  '\$ ${post.salary} / m',
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: kFontPoppins,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  post.location,
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: kFontPoppins,
                    fontWeight: FontWeight.w400,
                    color: kColor6A6A6AGrey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
