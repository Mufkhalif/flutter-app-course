import 'package:flutter/material.dart';
import 'package:my_learning_app/themes/themes.dart';
import 'package:my_learning_app/widgets/card_no_border.dart';
import 'package:my_learning_app/widgets/container_page.dart';

class TalentaScreen extends StatelessWidget {
  const TalentaScreen({
    Key? key,
    required this.maxWidth,
  }) : super(key: key);

  final double maxWidth;

  @override
  Widget build(BuildContext context) {
    return ContainerPage(maxWidth: maxWidth, isCarousel: false, children: [
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
              'Cari Talenta',
              style: regularGreyText.copyWith(
                color: Color(0xFFACACAC),
              ),
            )
          ],
        ),
      ),
      SizedBox(height: 16),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CardNoBorder(
            maxWidth: maxWidth,
            assets: 'assets/images/talenta1.png',
            title: 'Full Stack \nUI Designer',
            price: '300.000',
            rate: '3.9',
            author: 'Johnanes',
            imgAuthor: 'https://placeimg.com/100/100/man',
          ),
          CardNoBorder(
            maxWidth: maxWidth,
            assets: 'assets/images/talenta2.png',
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
          CardNoBorder(
            maxWidth: maxWidth,
            assets: 'assets/images/talenta3.png',
            title: 'Full Stack Web Laravel',
            price: '200.000',
            rate: '3.9',
            author: 'Rizal',
            imgAuthor: 'https://placeimg.com/100/90/any',
          ),
          CardNoBorder(
            maxWidth: maxWidth,
            assets: 'assets/images/talenta4.png',
            title: 'Course Apps with Rect Native',
            price: '600.000',
            rate: '4.9',
            author: 'Riska',
            imgAuthor: 'https://placeimg.com/100/120/any',
          ),
        ],
      ),
      SizedBox(height: 16),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CardNoBorder(
            maxWidth: maxWidth,
            assets: 'assets/images/talenta5.png',
            title: 'Full Stack Web Laravel',
            price: '200.000',
            rate: '3.9',
            author: 'Rizal',
            imgAuthor: 'https://placeimg.com/100/90/any',
          ),
          CardNoBorder(
            maxWidth: maxWidth,
            assets: 'assets/images/talenta6.png',
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
