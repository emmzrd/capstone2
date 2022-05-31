

import 'package:capstone2_jobhub2/models/registered_users.dart';
import 'package:flutter/material.dart';
import 'package:capstone2_jobhub2/home.dart';
import 'package:provider/provider.dart';
import 'package:capstone2_jobhub2/models/models.dart';
import 'models/data.dart';


class LoadingMain extends StatelessWidget {
  LoadingMain({Key? key,required this.loggedUser}) : super(key: key);
  var loggedUser;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => TabManager()),
          Provider<RegisteredUsers>(create: (context) => loggedUser),




        ],
        child: Home(),
      ),
    );
  }
}