import 'package:capstone2_jobhub2/components/constants.dart';
import 'package:flutter/material.dart';
class QualificationPostTile extends StatelessWidget {
  final String post;

  QualificationPostTile({Key? key, required this.post}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 1),
        child: Row(
          children: [
            Icon(
              Icons.fiber_manual_record,
              color: Colors.black,size: 15,
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Text(
                post,
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
      ),
    );
  }
}
