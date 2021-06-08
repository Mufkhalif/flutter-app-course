import 'package:flutter/material.dart';
import 'package:my_learning_app/themes/themes.dart';

import 'content_modal.dart';

class CardBadge extends StatelessWidget {
  const CardBadge({
    Key? key,
    required this.maxWidth,
    required this.assets,
    required this.title,
    required this.price,
    required this.rate,
    required this.author,
    required this.imgAuthor,
  }) : super(key: key);

  final double maxWidth;
  final String assets;
  final String title;
  final String price;
  final String rate;
  final String author;
  final String imgAuthor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet<void>(
          backgroundColor: Colors.transparent,
          context: context,
          isScrollControlled: true,
          builder: (BuildContext context) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  20,
                ),
              ),
              height: 750,
              child: Content(),
            );
          },
        );
      },
      child: Container(
        width: maxWidth / 2 - 30,
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: greyColor,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(14)),
                  child: Image.asset(
                    assets,
                    width: 140,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  transform: Matrix4.translationValues(110, -5.0, 30),
                  child: Image.asset(
                    'assets/images/badge1.png',
                    width: 19,
                    height: 24,
                    fit: BoxFit.cover,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    transform: Matrix4.translationValues(75, 66, 1),
                    padding: EdgeInsets.only(left: 5),
                    width: 57,
                    height: 27,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(.2),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.bookmark,
                          size: 19,
                          color: Color(0xFFFDD400),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          rate,
                          style: boldBlackText.copyWith(
                            fontSize: 14,
                            color: Color(0xFFFDD400),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 12),
            Text(
              title,
              style: boldBlackText.copyWith(fontSize: 16),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Rp $price',
              style: boldBlackText,
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    image: DecorationImage(
                      image: NetworkImage(imgAuthor),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  author,
                  style: regularGreyText.copyWith(
                    color: Color(0xFFACACAC),
                    fontSize: 16,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
