import 'package:flutter/material.dart';
import 'package:my_learning_app/pages/detail_course_page.dart';
import 'package:my_learning_app/themes/themes.dart';

class Content extends StatelessWidget {
  const Content({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop(null);
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return MaterialApp(
                    debugShowCheckedModeBanner: false,
                    home: Scaffold(
                      backgroundColor: Colors.white,
                      body: DetailCoursePage(),
                    ),
                  );
                }));
              },
              child: Center(
                child: Container(
                  width: 32,
                  height: 6,
                  decoration: BoxDecoration(
                    color: greyColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(height: 14),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return DetailCoursePage();
                }));
              },
              child: Center(
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
                      transform:
                          Matrix4.translationValues(346 / 2.3, 184 / 2.3, 1),
                      child: Icon(Icons.play_circle_fill,
                          size: 40, color: primaryColor),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Build Apps with Flutter',
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
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Text(
                        'Rp 123.321',
                        style: boldBlackText.copyWith(fontSize: 22),
                      ),
                      SizedBox(width: 15),
                      Text(
                        'Rp 321.321',
                        style: regularGreyText.copyWith(
                          fontSize: 18,
                          decoration: TextDecoration.lineThrough,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20.0),
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://placeimg.com/100/120/any'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Mufkhalif',
                        style: boldBlackText.copyWith(
                          fontSize: 16,
                        ),
                      ),
                      Text('  |  ', style: TextStyle(color: greyColor)),
                      Text(
                        'Mobile Developer',
                        style: regularBlackText.copyWith(),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    color: Color(0xFFf5f5f5),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconRow(
                          assets: 'assets/images/ic_star.png',
                          value: '3.4',
                          subTitle: 'Rating',
                        ),
                        Container(
                            width: 1, height: 32, color: Color(0xFFC6C6C6)),
                        IconRow(
                          assets: 'assets/images/ic_user.png',
                          value: '1.200',
                          subTitle: 'Bergabung',
                        ),
                        Container(
                            width: 1, height: 32, color: Color(0xFFC6C6C6)),
                        IconRow(
                          assets: 'assets/images/ic_shield.png',
                          value: 'Semua',
                          subTitle: 'Level',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    'Tentang Kelas',
                    style: boldBlackText.copyWith(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Full-Stack Laravel Flutter adalah kelas pertama kami yang terdapat berbagai macam materi seperti mobile development atau juga web development. Pada kelas ini kalian akan belajar bagaimana caranya membangun aplikasi iOS dan Android untuk pemesanan makanan secara online (seperti GrabFood atau GoFood). Mulai dari tahap slicing design-to-code sampai kepada pembuatan API khusus menggunakan Laravel versi 8.',
                    style: regularBlackText,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Full-Stack Laravel Flutter adalah kelas pertama kami yang terdapat berbagai macam materi seperti mobile development atau juga web development. Pada kelas ini kalian akan belajar bagaimana caranya membangun aplikasi iOS dan Android untuk pemesanan makanan secara online (seperti GrabFood atau GoFood). Mulai dari tahap slicing design-to-code sampai kepada pembuatan API khusus menggunakan Laravel versi 8.',
                    style: regularBlackText,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    child: Center(
                      child: Text(
                        'Checkout Kelas',
                        style: regularBlackText.copyWith(
                            color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class IconRow extends StatelessWidget {
  const IconRow({
    Key? key,
    required this.assets,
    required this.value,
    required this.subTitle,
  }) : super(key: key);

  final String assets;
  final String value;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              assets,
              width: 22,
              height: 22,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              value,
              style: boldBlackText.copyWith(),
            )
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          subTitle,
          style: regularGreyText.copyWith(
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
