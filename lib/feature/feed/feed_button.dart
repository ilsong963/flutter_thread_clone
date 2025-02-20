import 'package:flutter/material.dart';

class FeedButton extends StatelessWidget {
  const FeedButton(
      {super.key,
      required this.likeCount,
      required this.commentCount,
      required this.shareCount});
  final int likeCount;
  final int commentCount;
  final int shareCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {},
          child: SizedBox(
            width: 55,
            child: Row(
              children: [
                Image.asset(
                  'assets/images/icon_like.png',
                  width: 30,
                ),
                Text(likeCount.toString()),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: SizedBox(
            width: 55,
            child: Row(
              children: [
                Image.asset(
                  'assets/images/icon_message.png',
                  width: 30,
                ),
                Text(commentCount.toString()),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: SizedBox(
            width: 55,
            child: Row(
              children: [
                Image.asset(
                  'assets/images/icon_share.png',
                  width: 30,
                ),
                Text(shareCount.toString()),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Image.asset(
            'assets/images/icon_send.png',
            width: 30,
          ),
        ),
      ],
    );
  }
}
