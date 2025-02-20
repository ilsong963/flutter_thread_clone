import 'package:flutter/material.dart';
import 'package:flutter_application_3/feature/feed/feed_button.dart';
import 'package:flutter_application_3/feature/feed/feed_content.dart';
import 'package:flutter_application_3/feature/feed/feed_header.dart';
import 'package:flutter_application_3/feature/feed/feed_profile.dart';
import 'package:flutter_application_3/model/feed_model.dart';

class Feed extends StatelessWidget {
  const Feed({super.key, required this.feed});
  final FeedModel feed;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FeedProfile(
            profileColor: feed.profileColor,
            hasImage: feed.image.isNotEmpty ? true : false),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FeedHeader(nickName: feed.nickName, date: feed.date),
            FeedContent(description: feed.description, image: feed.image),
            FeedButton(
                likeCount: feed.likeCount,
                commentCount: feed.commentCount,
                shareCount: feed.shareCount)
          ],
        )),
      ],
    );
  }
}
