import 'package:flutter/material.dart';
import 'package:my_learning_app/pages/explore_screen.dart';
import 'package:my_learning_app/pages/home_screen.dart';
import 'package:my_learning_app/pages/talenta_screen.dart';
import 'package:my_learning_app/themes/themes.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final CarouselController _controller = CarouselController();

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;

    BottomNavigationBarItem buttonNav(
        bool isActive, String assets, String title) {
      return BottomNavigationBarItem(
        icon: Container(
          child: Column(
            children: [
              SvgPicture.asset(
                assets,
                width: 24,
                height: 24,
              ),
              SizedBox(height: 5),
              Text(
                title,
                style: isActive
                    ? boldBlackText.copyWith(color: primaryColor)
                    : regularGreyText,
              )
            ],
          ),
        ),
        label: '',
      );
    }

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          buttonNav(
              _selectedIndex == 0,
              _selectedIndex == 0
                  ? 'assets/images/ic_home_active.svg'
                  : 'assets/images/ic_home_unactive.svg',
              'Home'),
          buttonNav(
              _selectedIndex == 1,
              _selectedIndex == 1
                  ? 'assets/images/ic_explore_active.svg'
                  : 'assets/images/ic_explore_unactive.svg',
              'Eksplorasi'),
          buttonNav(
              _selectedIndex == 2,
              _selectedIndex == 2
                  ? 'assets/images/ic_collection_active.svg'
                  : 'assets/images/ic_collection_unactive.svg',
              'Talenta'),
          buttonNav(
              _selectedIndex == 3,
              _selectedIndex == 3
                  ? 'assets/images/ic_profile_active.svg'
                  : 'assets/images/ic_profile_unactive.svg',
              'Profile'),
        ],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 5,
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFF546EE5),
        unselectedItemColor: Color(0xFF696D74),
        onTap: _onItemTapped,
      ),
      body: IndexPage(
          controller: _controller, maxWidth: maxWidth, index: _selectedIndex),
    );
  }
}

class IndexPage extends StatelessWidget {
  const IndexPage({
    Key? key,
    required CarouselController controller,
    required this.maxWidth,
    required this.index,
  })  : _controller = controller,
        super(key: key);

  final CarouselController _controller;
  final double maxWidth;
  final int index;

  @override
  Widget build(BuildContext context) {
    return index == 0
        ? HomeScreen(controller: _controller, maxWidth: maxWidth)
        : index == 1
            ? ExploreScreen(maxWidth: maxWidth)
            : TalentaScreen(maxWidth: maxWidth);
  }
}
