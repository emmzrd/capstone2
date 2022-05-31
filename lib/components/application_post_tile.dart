import 'package:flutter/material.dart';
import 'package:capstone2_jobhub2/models/post.dart';
import 'package:capstone2_jobhub2/components/constants.dart';

class ApplicationPostTile extends StatelessWidget {
  ApplicationPostTile({Key? key, required this.post}) : super(key: key);
  Post post;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.push(context, MaterialPageRoute(builder: (context)=>ApplyScreen(post: post,)));
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.white),
        padding: EdgeInsets.only(left: 20, top: 20, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        post.company,
                        style: kApplicationsTextStyle12,
                      ),
                      Text(
                        post.position,
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: kFontPoppins,
                            color: kColor1A1D1EBlack,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        post.location,
                        style: kApplicationsTextStyle12,
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 5),
                  decoration: BoxDecoration(
                    color: kColorE4F2FFLightBlue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: 135,
                  height: 35,
                  child: Text(
                    'Delivered',
                    textAlign: TextAlign.center,
                    style: kApplicationsTextStyle16,
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                Text(
                  '\$${post.salary} Monthly',
                  style: kApplicationsTextStyle16,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
