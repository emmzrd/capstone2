import 'package:capstone2_jobhub2/components/friend_post_list_view_horizontal.dart';
import 'package:flutter/material.dart';
import 'package:capstone2_jobhub2/api/mock_food_app_service.dart';
import 'package:capstone2_jobhub2/components/components.dart';
import 'package:capstone2_jobhub2/models/models.dart';

class HomeScreen extends StatelessWidget {
  final mockService = MockFoodAppService();

  HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: mockService.getExploreData(),
      builder: (BuildContext context, AsyncSnapshot<ExploreData> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final friendPosts = snapshot.data?.friendPosts ?? [];
          return ListView(
            children: [
              FriendPostListViewHorizontal(friendPosts: friendPosts),
              FriendPostListView(friendPosts: friendPosts),
            ],
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
