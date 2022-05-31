import 'package:capstone2_jobhub2/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:capstone2_jobhub2/screens/login_screen.dart';
import 'package:capstone2_jobhub2/loading_main.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/splash_logo.PNG'),
            Center(
              child: Column(
                children: [
                  Image.asset('assets/images/splash.PNG'),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Find a Perfect\nJob Match',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 34,
                      fontFamily: kFontPoppins,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Finding your dream job is more easier\nand faster with JobHub',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: kFontPoppins,
                      color: kColor6A6A6AGrey,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                    child: Text(
                      'Let\'s Get Started  ➜',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: kFontPoppins,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: kColor4CA6A8CyanGreen,
                      minimumSize: Size(261, 54),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
