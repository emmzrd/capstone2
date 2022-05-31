import 'package:capstone2_jobhub2/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:capstone2_jobhub2/components/constants.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool newPost = true;
  bool hired = true;
  bool rejected = true;
  bool message = true;
  bool call = true;
  bool darkMode = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notification',
          style: kAppBarTextStyle,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: kColorFBFBFBblack,
        leading: GestureDetector(
          onTap: () {

          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 16,
        ),
        child: Column(
          children: [
            CupertinoSwitchSettings(
              titleText: 'New Post',
              subtitle: 'If any new post update',
              valueSwitch: newPost,
            ),
            SizedBox(
              height: 15,
            ),
            CupertinoSwitchSettings(
                titleText: 'Got Hired',
                subtitle: 'If you get hired by any company',
                valueSwitch: hired),
            SizedBox(
              height: 15,
            ),
            CupertinoSwitchSettings(
                titleText: 'Get Rejected',
                subtitle: 'If you get rejected by any company',
                valueSwitch: rejected),
            SizedBox(
              height: 15,
            ),
            CupertinoSwitchSettings(
                titleText: 'Message',
                subtitle: 'Got any new message',
                valueSwitch: message),
            SizedBox(
              height: 15,
            ),
            CupertinoSwitchSettings(
                titleText: 'Call', subtitle: 'Have a call', valueSwitch: call),
            SizedBox(
              height: 15,
            ),
            CupertinoSwitchSettings(
                titleText: 'Dark Mode',
                subtitle: 'Enable dark theme',
                valueSwitch: darkMode),
          ],
        ),
      ),
    );
  }
}

class CupertinoSwitchSettings extends StatefulWidget {
  CupertinoSwitchSettings({
    Key? key,
    required this.titleText,
    required this.subtitle,
    required this.valueSwitch,
  }) : super(key: key);
  String titleText;
  String subtitle;
  bool valueSwitch;

  @override
  State<CupertinoSwitchSettings> createState() =>
      _CupertinoSwitchSettingsState();
}

class _CupertinoSwitchSettingsState extends State<CupertinoSwitchSettings> {
  @override
  Widget build(BuildContext context) {
    return MergeSemantics(
      child: ListTile(
        title: Text(
          widget.titleText,
          style: TextStyle(
            fontSize: 20,
            fontFamily: kFontPoppins,
            fontWeight: FontWeight.w500,
            color: kColor1A1D1EBlack,
          ),
        ),
        subtitle: Text(
          widget.subtitle,
          style: TextStyle(
            fontSize: 10,
            fontFamily: kFontPoppins,
            fontWeight: FontWeight.w400,
            color: kColor6A6A6AGrey,
          ),
        ),
        trailing: CupertinoSwitch(
          trackColor: kColorE9E9E9LightGrey,
          activeColor: kColor4CA6A8CyanGreen,
          value: widget.valueSwitch,
          onChanged: (value) {
            setState(() {
              widget.valueSwitch = value;
            });
          },
        ),
      ),
    );
  }
}
