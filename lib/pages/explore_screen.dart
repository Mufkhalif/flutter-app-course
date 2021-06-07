import 'package:flutter/material.dart';
import 'package:my_learning_app/themes/themes.dart';
import 'package:my_learning_app/widgets/card_badge.dart';
import 'package:my_learning_app/widgets/container_page.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({
    Key? key,
    required this.maxWidth,
  }) : super(key: key);

  final double maxWidth;

  @override
  Widget build(BuildContext context) {
    return ContainerPage(
        maxWidth: maxWidth,
        isCarousel: false,
        isHeader: true,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            decoration: BoxDecoration(
              color: Color(0xFFE5E5E5),
              borderRadius: BorderRadius.all(
                Radius.circular(12.0),
              ),
            ),
            child: Row(
              children: [
                Icon(Icons.search, color: Color(0xFFACACAC)),
                SizedBox(width: 8),
                Text(
                  'Temukan Kelas mu',
                  style: regularGreyText.copyWith(
                    color: Color(0xFFACACAC),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 31,
          ),
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
                assets: 'assets/images/class2.png',
                title: 'Full Stack \nUI Designer',
                price: '300.000',
                rate: '3.9',
                author: 'Johnanes',
                imgAuthor: 'https://placeimg.com/100/100/man',
              ),
              CardBadge(
                maxWidth: maxWidth,
                assets: 'assets/images/class3.png',
                title: 'Build Apps with Flutter ',
                price: '700.000',
                rate: '4.9',
                author: 'Markus',
                imgAuthor: 'https://placeimg.com/100/100/any',
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
        ]);
  }
}
