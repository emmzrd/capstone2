import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:capstone2_jobhub2/components/constants.dart';
import 'package:capstone2_jobhub2/models/post.dart';
import 'package:capstone2_jobhub2/screens/applications_screen.dart';

List applicationsPost = [];

class FormApplyScreen extends StatefulWidget {
  FormApplyScreen({Key? key, required this.post}) : super(key: key);
  final Post post;

  // List applicationsPost = List.empty(growable: true);

  @override
  State<FormApplyScreen> createState() => _FormApplyScreenState();
}

class _FormApplyScreenState extends State<FormApplyScreen> {
  String? formFirstName;
  String? formLastName;
  String? formEmail;
  String? formCountry;
  String? formMessage;
  var formCV;

  // List applicationsPost=List.empty(growable: true);

  String country = 'USA';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          'Job Apply',
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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  FormWidgetName(
                    formName: formFirstName,
                    nameTitle: 'First Name',
                  ),
                  Spacer(),
                  FormWidgetName(
                    formName: formLastName,
                    nameTitle: 'Last Name',
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Your Email',
                style: kFormSubtitleTextStyle,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 55,
                child: TextFormField(
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontFamily: kFontPoppins,
                    color: kColor1A1D1EBlack,
                  ),
                  onChanged: (value) {
                    formEmail = value;
                  },
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: kColorE2E2E2LightGrey),
                        borderRadius: BorderRadius.circular(12)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: kColorE2E2E2LightGrey,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Country',
                style: kFormSubtitleTextStyle,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    color: (Colors.white)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          child: Image.asset('assets/countries/$country.png'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: DropdownButton<String>(
                            isExpanded: true,
                            value: country,
                            elevation: 16,
                            style: const TextStyle(
                                color: kColor1A1D1EBlack,
                                fontSize: 14,
                                fontFamily: kFontPoppins,
                                fontWeight: FontWeight.w400),
                            underline: Container(
                              color: Colors.deepPurpleAccent,
                            ),
                            onChanged: (String? newValue) {
                              setState(() {
                                country = newValue!;
                              });
                            },
                            items: <String>['USA', 'Canada', 'United Kingdom']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Message',
                style: kFormSubtitleTextStyle,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                child: TextField(
                  maxLines: 4,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontFamily: kFontPoppins,
                    color: kColor1A1D1EBlack,
                  ),
                  onChanged: (value) {
                    formMessage = value;
                  },
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: kColorE2E2E2LightGrey,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: kColorE2E2E2LightGrey,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'CV',
                style: kFormSubtitleTextStyle,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(9)),
                height: 70,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9)),
                    side: BorderSide(
                      color: kColorE2E2E2LightGrey,
                    ),
                  ),
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Upload Here',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: kFontPoppins,
                          fontWeight: FontWeight.w500,
                          color: kColor6A6A6AGrey,
                        ),
                      ),
                      Icon(
                        Icons.file_open_rounded,
                        color: kColor6A6A6AGrey,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  applicationsPost.add(widget.post);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ApplicationsScreen(
                                applicationsPost: applicationsPost,
                              )));
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
                    minimumSize: Size(335, 54),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12))),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

class FormWidgetName extends StatelessWidget {
  FormWidgetName({Key? key, required this.formName, required this.nameTitle})
      : super(key: key);

  String? formName;
  String nameTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          nameTitle,
          style: kFormSubtitleTextStyle,
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: 145,
          height: 55,
          child: TextFormField(
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              fontFamily: kFontPoppins,
              color: kColor1A1D1EBlack,
            ),
            onChanged: (value) {
              formName = value;
            },
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 20),
              filled: true,
              fillColor: Colors.white,
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: kColorE2E2E2LightGrey),
                  borderRadius: BorderRadius.circular(12)),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: kColorE2E2E2LightGrey),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
