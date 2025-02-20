import 'package:flutter/material.dart';

class FeedContent extends StatelessWidget {
  const FeedContent(
      {super.key, required this.description, required this.image});
  final String description;
  final List<String> image;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(description),
      SizedBox(height: 10),
      if (image.isNotEmpty) ...[
        SizedBox(height: 10),
        SizedBox(
          height: 200,
          child: PageView(
            padEnds: false,
            controller: PageController(viewportFraction: 0.75),
            children: List.generate(image.length, (index) {
              return Image.asset(image[index]);
            }),
          ),
        ),
        SizedBox(height: 10),
      ],
    ]);
  }
}
