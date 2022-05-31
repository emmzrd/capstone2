import 'package:capstone2_jobhub2/components/constants.dart';
import 'package:capstone2_jobhub2/screens/registration_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:capstone2_jobhub2/loading_main.dart';
import 'package:capstone2_jobhub2/models/registered_users.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _showPassword = true;

  var user1 = RegisteredUsers(
      name: 'Stephen Strange',
      email: 'stephen_strange@yahoo.com',
      password: 'Marvel19*',
      imageUrl: 'assets/images/strange.jpg');
  var user2 = RegisteredUsers(
    name: 'Tony Stark',
    email: 'tony_stark@yahoo.com',
    password: 'Marvel19*',
    imageUrl: 'assets/images/tonystark.png',
  );
  String? email;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorFBFBFBblack,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Welcome Back!',
                          style: TextStyle(
                            fontSize: 30,
                            fontFamily: kFontPoppins,
                            fontWeight: FontWeight.w700,
                            color: kColor1A1D1EBlack,
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                    Text(
                      'Fill your details or continue\nwith social media',
                      style: TextStyle(
                        color: kColor6A6A6AGrey,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 335,
                  height: 54,
                  child: TextField(
                    onChanged: (value) {
                      email = value;
                    },
                    decoration: InputDecoration(
                      hintText: 'Email Address',
                      hintStyle: TextStyle(
                        color: kColor6A6A6AGrey,
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18),
                        child: Icon(
                          CupertinoIcons.envelope,
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
                  height: 20,
                ),
                Container(
                  width: 335,
                  height: 54,
                  child: TextField(
                    obscureText: _showPassword,
                    onChanged: (value) {
                      password = value;
                    },
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: kColor6A6A6AGrey,
                      ),
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
                          color: Color(0XFF6A6A6A),
                        ),
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18),
                        child: Icon(
                          CupertinoIcons.lock,
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
                Row(
                  children: [
                    Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot Password?',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: kColor6A6A6AGrey,
                          fontSize: 12,
                          fontFamily: kFontPoppins,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    // if (user1.email == email && user1.password == password) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoadingMain(
                          loggedUser: user1,
                        ),
                      ),
                    );
                    // }
                    // else if (user2.email == email &&
                    //     user2.password == password) {
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => LoadingMain(
                    //         loggedUser: user2,
                    //       ),
                    //     ),
                    //   );
                    // }
                  },
                  child: Text(
                    'LOG IN',
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
                SizedBox(
                  height: 30,
                ),
                Text(
                  '— Or Continue with —',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: kColor6A6A6AGrey,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: kColorE4F2FFLightBlue),
                        width: 40,
                        height: 40,
                        child: Image.asset('assets/companies/google.png'),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 70,
                        height: 70,
                        child: Image.asset('assets/companies/facebook.png'),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'New User?',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: kColor6A6A6AGrey,
                        fontFamily: kFontPoppins,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegistrationScreen()));
                      },
                      child: Text(
                        'Create Account',
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 16,
                          color: kColor1B1E1FBlack,
                          fontFamily: kFontPoppins,
                        ),
                      ),
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
