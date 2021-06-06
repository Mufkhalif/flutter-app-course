import 'package:flutter/material.dart';
import 'package:my_learning_app/themes/themes.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:my_learning_app/widgets/card_badge.dart';
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(14.0),
                child: Container(
                  width: 100,
                  height: 80,
                  color: Colors.red,
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/images/class1.png',
                        width: 100,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Full Stack \nUI Designer (1289)',
                      style: boldBlackText.copyWith(fontSize: 16),
                    ),
                    SizedBox(height: 10),
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
              ),
              Container(
                width: 51,
                height: 51,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: greyColor,
                    width: 5,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
                child: Center(
                  child: Text('25%', style: boldBlackText),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
