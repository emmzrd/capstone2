import 'package:flutter/material.dart';
import 'package:capstone2_jobhub2/models/post.dart';
import 'package:capstone2_jobhub2/components/qualification_post_tile.dart';
import 'package:capstone2_jobhub2/components/reviews_post_tile.dart';
import 'package:capstone2_jobhub2/screens/form_apply_screen.dart';
import 'package:capstone2_jobhub2/components/constants.dart';

class ApplyScreen extends StatefulWidget {
  final Post post;

  ApplyScreen({Key? key, required this.post}) : super(key: key);

  @override
  State<ApplyScreen> createState() => _ApplyScreenState();
}

class _ApplyScreenState extends State<ApplyScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: kColorE4F2FFLightBlue),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(widget.post.profileImageUrl),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  widget.post.position,
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: kFontPoppins,
                    fontWeight: FontWeight.w600,
                    color: Color(0XFF1A1D1E),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${widget.post.company} —',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: kFontPoppins,
                        fontWeight: FontWeight.w500,
                        color: kColor1A1D1EBlack,
                      ),
                    ),
                    Icon(Icons.location_on_outlined),
                    Text(
                      widget.post.location,
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: kFontPoppins,
                        fontWeight: FontWeight.w500,
                        color: kColor6A6A6AGrey,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.access_time),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      widget.post.jobType,
                      style: kApply18w400Poppins6A6A6ATextStyle,
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Text(
                      '\$${widget.post.salary}/m',
                      style: kApply18w400Poppins6A6A6ATextStyle,
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                TabBar(
                  indicatorColor: Colors.transparent,
                  indicatorPadding: EdgeInsets.symmetric(horizontal: 10),
                  unselectedLabelColor: kColor6A6A6AGrey,
                  labelColor: Colors.white,
                  indicator: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    color: Color(0XFF4CA6A8),
                  ),
                  tabs: [
                    ApplyTab(
                      applyText: 'Description',
                    ),
                    ApplyTab(
                      applyText: 'Company',
                    ),
                    ApplyTab(
                      applyText: 'Reviews',
                    ),
                  ],
                  controller: _tabController,
                  indicatorSize: TabBarIndicatorSize.tab,
                ),
                Container(
                  height: 300,
                  child: TabBarView(
                    physics: ClampingScrollPhysics(),
                    children: [
                      Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Qualifications',
                                style: kApplyTabBarViewTitleTextStyle,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              ListView.separated(
                                primary: false,
                                physics: ClampingScrollPhysics(),
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemBuilder: (context, index) {
                                  final post =
                                      widget.post.jobDescription[index];
                                  return QualificationPostTile(post: post);
                                  return Container(color: Colors.blue);
                                },
                                separatorBuilder: (context, index) {
                                  return SizedBox(
                                    height: 20,
                                  );
                                },
                                itemCount: widget.post.jobDescription.length,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'About the Company',
                            style: kApplyTabBarViewTitleTextStyle,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.fiber_manual_record,
                                color: Colors.black,
                                size: 15,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Text(
                                  widget.post.companyDescription,
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: kColor6A6A6AGrey,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Center(
                        child: Container(
                          height: 400,
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Employee Reviews',
                                style: kApplyTabBarViewTitleTextStyle,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              ListView.separated(
                                primary: false,
                                physics: AlwaysScrollableScrollPhysics(),
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemBuilder: (context, index) {
                                  final post = widget.post.review[index];
                                  return ReviewsPostTile(post: post);
                                },
                                separatorBuilder: (context, index) {
                                  return SizedBox(
                                    height: 20,
                                  );
                                },
                                itemCount: widget.post.review.length,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                    controller: _tabController,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FormApplyScreen(
                              post: widget.post,
                            ),
                          ),
                        );
                      },
                      child: Text(
                        'Apply Now',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: kFontPoppins,
                            fontWeight: FontWeight.w600),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: kColor4CA6A8CyanGreen,
                        minimumSize: Size(261, 54),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 70,
                      width: 70,
                      child: IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/images/message_button.png'),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ApplyTab extends StatelessWidget {
  ApplyTab({Key? key, required this.applyText}) : super(key: key);
  String applyText;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Container(
        height: 50,
        width: 123,
        child: Center(
          child: Text(
            applyText,
            style: TextStyle(
              fontSize: 14,
              fontFamily: kFontPoppins,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
