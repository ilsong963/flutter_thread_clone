import 'package:flutter/material.dart';

class FeedProfile extends StatelessWidget {
  const FeedProfile(
      {super.key, required this.profileColor, required this.hasImage});
  final int profileColor;
  final bool hasImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 60,
          height: 60,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Container(
                      width: 50,
                      height: 50,
                      color: Color(profileColor),
                    )),
              ),
              Positioned(
                  right: 5,
                  bottom: 2,
                  child: SizedBox(
                    width: 20,
                    height: 20,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        decoration: BoxDecoration(color: Colors.black),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 17,
                        ),
                      ),
                    ),
                  ))
            ],
          ),
        ),
        SizedBox(height: 15),
        if (hasImage)
          Container(
            width: 2,
            height: 200,
            color: Color(0xffe5e5e5),
          ),
      ],
    );
  }
}
