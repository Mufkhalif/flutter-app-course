import 'package:flutter/material.dart';
import 'package:my_learning_app/pages/home_page.dart';
import 'package:my_learning_app/themes/themes.dart';
import 'package:my_learning_app/widgets/container_page.dart';

class DetailCoursePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;

    return ContainerPage(
      maxWidth: maxWidth,
      isCarousel: false,
      isHeader: false,
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return MaterialApp(
                    debugShowCheckedModeBanner: false,
                    home: Scaffold(
                      backgroundColor: Colors.white,
                      body: HomePage(),
                    ),
                  );
                }));
              },
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: greyColor,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Center(
                  child: Icon(
                    Icons.chevron_left,
                    size: 22,
                    color: darkColor,
                  ),
                ),
              ),
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: greyColor,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Row(children: [
                Image.asset(
                  'assets/images/ic_star.png',
                  width: 22,
                  height: 22,
                ),
                SizedBox(width: 10),
                Text('Rate us', style: regularBlackText)
              ]),
            ),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Center(
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Container(
                  width: 346,
                  height: 184,
                  child: Hero(
                    tag: 'cover',
                    child: Image.asset(
                      'assets/images/class1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Container(
                transform: Matrix4.translationValues(346 / 2.3, 184 / 2.3, 1),
                child:
                    Icon(Icons.play_circle_fill, size: 40, color: primaryColor),
              )
            ],
          ),
        ),
        SizedBox(height: 30),
        Row(
          children: [
            Text(
              'Build Apps with Flutters',
              style: boldBlackText.copyWith(fontSize: 22),
            ),
            SizedBox(width: 15),
            Image.asset(
              'assets/images/badge1.png',
              width: 19,
              height: 24,
              fit: BoxFit.cover,
            )
          ],
        ),
        SizedBox(height: 24),
        Container(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: greyColor,
              width: 1.0,
            ),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/images/ic_ticket.png',
                width: 18,
                height: 18,
              ),
              SizedBox(width: 8),
              Text(
                'Flutter UI',
                style: boldBlackText.copyWith(fontSize: 17),
              ),
              Spacer(),
              Icon(
                Icons.arrow_drop_down,
                size: 22,
                color: darkColor,
              )
            ],
          ),
        ),
        Container(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            decoration: BoxDecoration(
              color: Color(0xFFF5F5F5),
              border: Border.all(
                color: greyColor,
                width: 1.0,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 10),
                RowTile(title: 'Sign Up Page', isPlayed: true),
                RowTile(title: 'Home Page', isPlayed: true),
                RowTile(title: 'Bottom Navigation Bar', isPlayed: false),
                RowTile(
                    title: 'Animated Bottom Navigation Bar', isPlayed: false),
              ],
            ))
      ],
    );
  }
}

class RowTile extends StatelessWidget {
  const RowTile({
    Key? key,
    required this.title,
    required this.isPlayed,
  }) : super(key: key);

  final String title;
  final bool isPlayed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.only(bottom: 17),
      child: Row(
        children: [
          Image.asset(
            isPlayed
                ? 'assets/images/ic_play_active.png'
                : 'assets/images/ic_play_unactive.png',
            width: 18,
            height: 18,
          ),
          SizedBox(width: 8),
          Text(
            title,
            style: isPlayed
                ? regularBlackText.copyWith(fontSize: 14)
                : regularGreyText,
          )
        ],
      ),
    );
  }
}
