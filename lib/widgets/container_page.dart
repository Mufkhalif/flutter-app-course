import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_learning_app/themes/themes.dart';
import 'package:my_learning_app/widgets/header_profile.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({
    Key? key,
    required this.maxWidth,
    required this.children,
    required this.isCarousel,
  }) : super(key: key);

  final double maxWidth;
  final List<Widget> children;
  final bool isCarousel;

  @override
  Widget build(BuildContext context) {
    var carouselHeader = isCarousel ? CarouselHeader() : SizedBox();

    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: ListView(
        children: [
          HeaderProfile(),
          SizedBox(height: 40),
          carouselHeader,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...children,
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CarouselHeader extends StatefulWidget {
  const CarouselHeader({Key? key}) : super(key: key);

  @override
  _CarouselHeaderState createState() => _CarouselHeaderState();
}

class _CarouselHeaderState extends State<CarouselHeader> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              height: 142.0,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: false,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
          items: [
            1,
            2,
            3,
          ].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Container(
                    width: 396,
                    height: 144,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                    ),
                    child: Image.asset(
                      'assets/images/banner$i.png',
                      width: 296,
                      height: 144,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),
        SizedBox(height: 22),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < 3; i++) ...[
                Container(
                  width: i == _current ? 32 : 8,
                  height: 8,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    color: i == _current ? primaryColor : greyColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                  ),
                )
              ]
            ],
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
