import 'package:capstone2_jobhub2/components/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:capstone2_jobhub2/components/components.dart';
import 'package:capstone2_jobhub2/models/post.dart';
import 'package:capstone2_jobhub2/models/models.dart';
import 'package:capstone2_jobhub2/screens/apply_screen.dart';

class FriendPostTile extends StatelessWidget {
  final Post post;

  const FriendPostTile({
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
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.white),
        padding: EdgeInsets.all(15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 50,
              height: 50,
              child: Image.asset(post.profileImageUrl),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: kColorE4F2FFLightBlue,
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    post.position,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: kFontPoppins,
                      color: kColor1A1D1EBlack,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    post.jobType,
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: kFontPoppins,
                        fontWeight: FontWeight.w400,
                        color: kColor6A6A6AGrey),
                  )
                ],
              ),
            ),
            Text('\$ ${post.salary} / m',style: TextStyle(
                fontSize: 12,
                fontFamily: kFontPoppins,
                fontWeight: FontWeight.w500,
                color: kColor6A6A6AGrey),),
          ],
        ),
      ),
    );
  }
}
