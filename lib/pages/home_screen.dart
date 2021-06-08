import 'package:flutter/material.dart';
import 'package:my_learning_app/themes/themes.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:my_learning_app/widgets/card_badge.dart';
import 'package:my_learning_app/widgets/card_myclass.dart';
import 'package:my_learning_app/widgets/container_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
    required CarouselController controller,
    required this.maxWidth,
  }) : super(key: key);

  final double maxWidth;

  @override
  Widget build(BuildContext context) {
    return ContainerPage(
      maxWidth: maxWidth,
      isCarousel: true,
      isHeader: true,
      children: [
        Row(
          children: [
            Text(
              'Kelas Popular',
              style: boldBlackText.copyWith(fontSize: 22),
            ),
            SizedBox(width: 12),
            Icon(
              Icons.bookmark,
              size: 22,
              color: Color(0xFFFDD400),
            ),
          ],
        ),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CardBadge(
              maxWidth: maxWidth,
              assets: 'assets/images/class1.png',
              title: 'Full Stack Web Laravel',
              price: '200.000',
              rate: '3.9',
              author: 'Rizal',
              imgAuthor: 'https://placeimg.com/100/90/any',
            ),
            CardBadge(
              maxWidth: maxWidth,
              assets: 'assets/images/class4.png',
              title: 'Course Apps with Rect Native',
              price: '600.000',
              rate: '4.9',
              author: 'Riska',
              imgAuthor: 'https://placeimg.com/100/120/any',
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Text(
              'Kelas Saya',
              style: boldBlackText.copyWith(fontSize: 22),
            ),
          ],
        ),
        SizedBox(height: 14),
        Container(
          padding: EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: greyColor,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: CardMyClass(),
        )
      ],
    );
  }
}
