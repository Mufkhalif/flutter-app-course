import 'package:flutter/material.dart';
import 'package:my_learning_app/themes/themes.dart';

class VerticalCard extends StatelessWidget {
  final double maxWidth;

  const VerticalCard({
    Key? key,
    required this.maxWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(14)),
            child: Container(
              width: 140,
              height: 100,
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/class1.png',
                    width: 140,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  Align(
                    alignment: Alignment(0.9, -1.2),
                    child: Icon(
                      Icons.bookmark,
                      size: 32,
                      color: primaryColor,
                    ),
                  ),
                  Align(
                    alignment: Alignment(0.8, 0.8),
                    child: Container(
                      padding: EdgeInsets.only(left: 5),
                      width: 57,
                      height: 27,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(.4),
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
                            '3.8',
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
            ),
          ),
          SizedBox(
            height: 9,
          ),
          Text(
            'Full Stack \nUI Designer (1289)',
            style: boldBlackText.copyWith(fontSize: 16),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Rp 299.999',
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
                  border: Border.all(
                    color: greyColor,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://scontent-cgk1-2.cdninstagram.com/v/t51.2885-19/s150x150/196326587_203806188264518_2062963617481260510_n.jpg?tp=1&_nc_ht=scontent-cgk1-2.cdninstagram.com&_nc_ohc=2qk4XV7x_jYAX-fZWcA&edm=ABfd0MgBAAAA&ccb=7-4&oh=d950f09f1d9735fe72fcd98e84045117&oe=60C14990&_nc_sid=7bff83'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'Mufkhalif',
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
