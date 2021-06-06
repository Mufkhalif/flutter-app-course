import 'package:flutter/material.dart';
import 'package:my_learning_app/themes/themes.dart';

class CardNoBorder extends StatelessWidget {
  const CardNoBorder({
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
    return Container(
      width: maxWidth / 2 - 30,
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
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
                  width: 158,
                  height: 118,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  transform: Matrix4.translationValues(95, 86, 1),
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
                        Icons.favorite,
                        size: 18,
                        color: Color(0xFFF43125),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        rate,
                        style: boldBlackText.copyWith(
                          fontSize: 14,
                          color: Color(0xFFF43125),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 12),
          Row(
            children: [
              Container(
                width: 25,
                height: 25,
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
    );
  }
}
