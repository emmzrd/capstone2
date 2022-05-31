import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:capstone2_jobhub2/components/circle_image.dart';
import 'package:provider/provider.dart';
import 'package:capstone2_jobhub2/models/registered_users.dart';
import 'package:capstone2_jobhub2/components/constants.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key? key} ) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  bool _showPassword = true;
  String? email='stephen_strange@yahoo.com';
  String? password='Marvel19*';
  String? name='Stephen Strange';

  static passwordCheck(password) {
    if (password == null || password.isEmpty) {
      return "Invalid password!";
    } else if (password.length < 8) {
      return "Password must have 8 characters";
    } else if (!password.contains(RegExp(r'[A-Z]'))) {
      return "Password must have uppercase";
    } else if (!password.contains(RegExp(r'[0-9]'))) {
      return "Password must have digits";
    } else if (!password.contains(RegExp(r'[a-z]'))) {
      return "Password must have lowercase";
    } else if (!password.contains(RegExp(r'[#?!@$%^&*-]'))) {
      return "Password must have special characters";
    } else {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: kAppBarTextStyle
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: kColorFBFBFBblack,
        leading: GestureDetector(
          onTap: () {},
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: kColorFBFBFBblack,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleImage(
                      imageProvider: AssetImage(Provider.of<RegisteredUsers>(context,listen: false).imageUrl),
                      imageRadius: 60,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        Provider.of<RegisteredUsers>(context,listen: false).name,
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: kFontPoppins,
                        fontWeight: FontWeight.w500,
                        color: kColor1A1D1EBlack,
                      ),
                    ),
                    Text(
                      'Edit Profile',
                      style: TextStyle(
                        color: kColor6A6A6AGrey,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Text('Name',style: kProfileSubtitleTextStyle),
                    Spacer(),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                ProfileTextFormField(username: Provider.of<RegisteredUsers>(context,listen: false).name,),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text('Your Email',style: kProfileSubtitleTextStyle),
                    Spacer(),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                ProfileTextFormField(username: Provider.of<RegisteredUsers>(context,listen: false).email,),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text('Password',style: kProfileSubtitleTextStyle),
                    Spacer(),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 335,
                  height: 80,
                  child: TextFormField(
                    initialValue: Provider.of<RegisteredUsers>(context,listen: false).password,
                    obscureText: _showPassword,
                    onChanged: (value) {
                      setState(() {
                        password = value;
                      });
                    },
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(
                        top: 15,
                        left: 20,
                        right: 20,
                      ),
                      errorText: passwordCheck(password),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _showPassword = !_showPassword;
                          });
                        },
                        icon: Icon(
                          _showPassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: kColor6A6A6AGrey,
                        ),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(12)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 0,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Save Now',
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: kFontPoppins,
                        fontWeight: FontWeight.w500),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: kColor4CA6A8CyanGreen,
                      minimumSize: Size(335, 54),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileTextFormField extends StatelessWidget {
  ProfileTextFormField({
    Key? key,
    required this.username,
  }) : super(key: key);

  String? username;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 54,
      child: TextFormField(
        onChanged: (value) {
          username = value;
        },
        initialValue: '$username',
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 20),
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(12)),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
