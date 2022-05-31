import 'package:capstone2_jobhub2/components/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:capstone2_jobhub2/screens/login_screen.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  // final _auth = FirebaseAuth.instance;
  bool _showPassword = true;
  String? email;
  String? password;
  String? name;

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
      backgroundColor: kColorFBFBFBblack,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Register Account',
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
                RegistrationTextField(hintText: 'Name',onChanged: name,icon: CupertinoIcons.person,),
                SizedBox(
                  height: 20,
                ),
                RegistrationTextField(hintText: 'Email Address', icon: CupertinoIcons.envelope, onChanged: email),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 335,
                  height: 80,
                  child: TextField(
                    obscureText: _showPassword,
                    onChanged: (value) {
                      setState(() {
                        password = value;
                      });
                    },
                    decoration: InputDecoration(
                      errorBorder: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 15),
                      errorText: passwordCheck(password),
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
                          color: kColor6A6A6AGrey,
                        ),
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18),
                        child: Icon(
                          CupertinoIcons.lock,
                          color: kColor6A6A6AGrey,
                        ),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(50)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Text(
                    'SIGN  UP',
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
                      'Already Have an Account?',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: kColor6A6A6AGrey,
                          fontFamily: kFontPoppins),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      },
                      child: Text(
                        'Log In',
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 16,
                            color: kColor1B1E1FBlack,
                            fontFamily: kFontPoppins),
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

class RegistrationTextField extends StatelessWidget {
  RegistrationTextField({
    Key? key,
    required this.hintText,
    required this.icon,
    required this.onChanged,
  }) : super(key: key);

  String hintText;
  var icon;
  var onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 54,
      child: TextField(
        onChanged: (value) {
          onChanged=value;
        },
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: kColor6A6A6AGrey,
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Icon(
              icon,
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
    );
  }
}
