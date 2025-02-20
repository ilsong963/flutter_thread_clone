import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/bottom_nav.dart';
import 'package:flutter_application_3/feature/feed/feed.dart';
import 'package:flutter_application_3/feature/feed/feed_write_screen.dart';
import 'package:flutter_application_3/header.dart';
import 'package:flutter_application_3/model/feed_model.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<FeedModel> feedList = []; // 기존 리스트

  final PagingController<int, FeedModel> _pagingController =
      PagingController(firstPageKey: 0);

  Future<void> _fetchFeed(int pageKey) async {
    try {
      // 새로운 Feed 하나 가져오기
      final newFeed = getNewFeed();

      // 기존 리스트에 추가
      feedList.add(newFeed);

      final nextPageKey = pageKey + 1;
      _pagingController.appendPage([newFeed], nextPageKey);
    } catch (error) {
      _pagingController.error = error;
    }
  }

  @override
  void initState() {
    super.initState();
    _pagingController.addPageRequestListener((pageKey) {
      _fetchFeed(pageKey);
    });
  }

  // @override
  // Widget build(BuildContext context) {
  //   return DefaultTabController(
  //       length: 2,
  //       child: Scaffold(
  //           appBar: appBar(),
  //           backgroundColor: Colors.white,
  //           bottomNavigationBar: BottonNav(),
  //           body: CupertinoPageScaffold(
  //               child = SafeArea(
  //                   child: TabBarView(children: [
  //             PagedListView<int, FeedModel>(
  //               pagingController: _pagingController,
  //               builderDelegate: PagedChildBuilderDelegate<FeedModel>(
  //                 itemBuilder: (context, item, index) {
  //                   return Padding(
  //                       padding: const EdgeInsets.symmetric(
  //                           horizontal: 20, vertical: 10),
  //                       child: Column(
  //                         children: [
  //                           Feed(feed: feedList[index]),
  //                           if (index != feedList.length - 1)
  //                             Divider(
  //                               height: 20,
  //                               thickness: 1,
  //                             )
  //                         ],
  //                       ));
  //                 },
  //               ),
  //             ),
  //             SizedBox()
  //           ])))));
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            bottomNavigationBar: BottomNav(),
            appBar: appBar(),
            backgroundColor: Colors.white,
            body: CupertinoPageScaffold(
                child: SafeArea(
                    child: TabBarView(children: [
              PagedListView<int, FeedModel>(
                pagingController: _pagingController,
                builderDelegate: PagedChildBuilderDelegate<FeedModel>(
                  itemBuilder: (context, item, index) {
                    return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Column(
                          children: [
                            Feed(feed: feedList[index]),
                            if (index != feedList.length - 1)
                              Divider(
                                height: 20,
                                thickness: 1,
                              )
                          ],
                        ));
                  },
                ),
              ),
              SizedBox()
            ])))));
  }

  AppBar appBar() {
    return AppBar(
      elevation: 1,
      backgroundColor: Colors.white,
      title: Header(),
      bottom: TabBar(
          labelColor: Colors.black,
          unselectedLabelColor: Color(0xff999999),
          indicatorColor: Colors.black,
          tabs: [
            Tab(
              text: '추천',
            ),
            Tab(text: '팔로잉'),
          ]),
    );
  }

  FeedModel getNewFeed() {
    List<String> nameList = ['김철수', '홍길동', '이영희', '박영수'];
    List<String> descriptionList = [
      '오늘은 날씨가 좋네요',
      '기분이 좋아요',
      '저녁 맛있게 드세요',
      '주말이 기다려져요'
    ];

    int profileColor = Random().nextInt(0xffffffff);

    String nickName = nameList[Random().nextInt(nameList.length)];

    List<String> image = getImageList();

    String description =
        descriptionList[Random().nextInt(descriptionList.length)];
    int likeCount = Random().nextInt(100);
    int commentCount = Random().nextInt(100);
    int shareCount = Random().nextInt(100);
    DateTime date = getRandomDate();

    return FeedModel(
        profileColor: profileColor,
        nickName: nickName,
        image: image,
        description: description,
        likeCount: likeCount,
        commentCount: commentCount,
        shareCount: shareCount,
        date: date);
  }

  List<String> getImageList() {
    List<String> imageList = [
      'assets/images/1.png',
      'assets/images/2.png',
      'assets/images/3.png',
    ];
    int imageCount = Random().nextInt(3);
    List<String> shuffled = List.from(imageList)..shuffle(Random());
    return shuffled.take(imageCount).toList();
  }

  DateTime getRandomDate() {
    DateTime now = DateTime.now();
    Random random = Random();
    DateTime start = now.subtract(Duration(days: 14));
    int difference = now.difference(start).inDays;
    int randomDays = random.nextInt(difference + 1); // 0 ~ difference일 사이의 랜덤값
    return start.add(Duration(days: randomDays));
  }
}
