import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:capstone2_jobhub2/components/constants.dart';
import 'package:capstone2_jobhub2/components/application_post_tile.dart';


class ApplicationsScreen extends StatefulWidget {
  ApplicationsScreen({Key? key, required this.applicationsPost})
      : super(key: key);

  List applicationsPost;

  @override
  State<ApplicationsScreen> createState() => _ApplicationsScreenState();
}

class _ApplicationsScreenState extends State<ApplicationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Applications',
          style: kAppBarTextStyle,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: kColorFBFBFBblack,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Your Applications',
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: kFontPoppins,
                  fontWeight: FontWeight.w500,
                  color: kColor1A1D1EBlack,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListView.separated(
                primary: false,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  final post = widget.applicationsPost[index];
                  return ApplicationPostTile(post: post);
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 20,
                  );
                },
                itemCount: widget.applicationsPost.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
