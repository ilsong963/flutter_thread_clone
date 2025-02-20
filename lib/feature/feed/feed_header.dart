import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FeedHeader extends StatelessWidget {
  const FeedHeader({super.key, required this.nickName, required this.date});
  final String nickName;
  final DateTime date;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    nickName,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 7),
                  Text(
                    formatDateTime(date),
                    style: TextStyle(
                      color: Color(0xff999999),
                      fontSize: 14,
                    ),
                  )
                ],
              ),
              GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.more_horiz,
                  color: Color(0xff999999),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  String formatDateTime(DateTime givenTime) {
    DateTime now = DateTime.now();
    Duration difference = now.difference(givenTime);

    if (difference.inHours < 24) {
      // 24시간 미만이면 "HH:mm" 형식 (예: 14:30)
      return DateFormat.Hm().format(givenTime);
    } else {
      // 24시간 이상이면 "MM.dd" 형식 (예: 02.19)
      return DateFormat("MM.dd").format(givenTime);
    }
  }
}
