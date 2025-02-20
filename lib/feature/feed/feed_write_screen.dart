import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeedWriteScreen extends StatelessWidget {
  const FeedWriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomSheet: BottomAppBar(
            child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('누구에게나 답글 및 인용 허용'),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 186, 187, 187),
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  '게시',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        )),
        body: SafeArea(
            child: CupertinoPageScaffold(
                backgroundColor: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              child: GestureDetector(
                                  child: Text(
                                    '취소',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  ),
                                  onTap: () {
                                    Navigator.pop(context);
                                  })),
                          Expanded(
                              child: Center(
                            child: Text(
                              '새로운 스레드',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                          Expanded(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.notes_outlined, color: Colors.black),
                              Icon(Icons.more_horiz, color: Colors.black)
                            ],
                          ))
                        ],
                      ),
                    ),
                    Divider(),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Image.asset(
                            'assets/images/profile_image.png',
                            width: 40,
                          ),
                        ),
                        SizedBox(width: 10),
                        SizedBox(
                          width: 300,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                'Kimsungduck',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff262626),
                                ),
                              ),
                              TextField(
                                maxLines: null,
                                keyboardType: TextInputType.multiline,
                                decoration: InputDecoration(
                                    hintText: '새로운 소식이 있나요?',
                                    hintStyle: TextStyle(
                                        color: Color(0xff999999), fontSize: 15),
                                    border: InputBorder.none),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 30),
                        Container(
                            width: 1, height: 30, color: Color(0xffe5e5e5)),
                        SizedBox(width: 40),
                        GestureDetector(
                            child: Image.asset('assets/images/photo_icon.png',
                                width: 30)),
                        SizedBox(width: 10),
                        GestureDetector(
                            child: Image.asset('assets/images/photo_icon.png',
                                width: 30)),
                        SizedBox(width: 10),
                        GestureDetector(
                            child: Image.asset('assets/images/gif_icon.png',
                                width: 30)),
                        SizedBox(width: 10),
                        GestureDetector(
                            child: Image.asset('assets/images/mic_icon.png',
                                width: 30)),
                        SizedBox(width: 10),
                        GestureDetector(
                            child: Image.asset('assets/images/align_icon.png',
                                width: 30)),
                      ],
                    )
                  ],
                ))));
  }
}
