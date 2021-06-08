import 'package:flutter/material.dart';
import 'package:my_learning_app/themes/themes.dart';
import 'package:my_learning_app/widgets/card_myclass.dart';
import 'package:my_learning_app/widgets/card_no_border.dart';

class AkunScreen extends StatefulWidget {
  const AkunScreen({Key? key}) : super(key: key);
  @override
  _AkunScreenState createState() => _AkunScreenState();
}

class _AkunScreenState extends State<AkunScreen>
    with SingleTickerProviderStateMixin {
  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'Kelas Saya'),
    Tab(text: 'Karya Saya'),
  ];

  late TabController _tabController;
  String dropdownValue = 'One';

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Row(
                children: [
                  Container(
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
                        Icons.notifications_active,
                        size: 22,
                        color: Color(0xFFFDD400),
                      ),
                    ),
                  ),
                  Spacer(),
                  DropdownButton<String>(
                    value: dropdownValue,
                    icon: Container(
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
                          Icons.settings,
                          size: 22,
                          color: darkColor,
                        ),
                      ),
                    ),
                    iconSize: 24,
                    elevation: 16,
                    style: const TextStyle(color: Colors.transparent),
                    underline: Container(
                      height: 0,
                      color: Colors.deepPurpleAccent,
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                    items: <String>['One', 'Two', 'Free', 'Four']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value, style: regularBlackText));
                    }).toList(),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=676&q=80',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: Column(
                children: [
                  Text(
                    'Dhimas putra',
                    style: boldBlackText.copyWith(fontSize: 18),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Premium',
                    style: regularBlackText.copyWith(color: primaryColor),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            Container(
              height: 45,
              margin: EdgeInsets.symmetric(horizontal: 23),
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFFE5E5E5),
              ),
              child: TabBar(
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    25.0,
                  ),
                  color: Colors.white,
                ),
                labelStyle: boldBlackText,
                labelColor: primaryColor,
                unselectedLabelColor: greyColor,
                unselectedLabelStyle: regularGreyText,
                controller: _tabController,
                tabs: myTabs,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  SingleChildScrollView(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: MyClass(maxWidth: maxWidth)),
                  ),
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: MyTalenta(maxWidth: maxWidth),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyClass extends StatelessWidget {
  const MyClass({
    Key? key,
    required this.maxWidth,
  }) : super(key: key);

  final double maxWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CardMyClass(),
        SizedBox(
          height: 20,
        ),
        CardMyClass(),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

class MyTalenta extends StatelessWidget {
  const MyTalenta({
    Key? key,
    required this.maxWidth,
  }) : super(key: key);

  final double maxWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        Row(
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
              assets: 'assets/images/talenta1.png',
              title: 'Full Stack Web Laravel',
              price: '300.000',
              rate: '3.9',
              author: 'Fahmi',
              imgAuthor: 'https://placeimg.com/100/90/any',
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            CardNoBorder(
              maxWidth: maxWidth,
              assets: 'assets/images/talenta2.png',
              title: 'UI / UX Designer',
              price: '200.000',
              rate: '3.9',
              author: 'Rizal',
              imgAuthor: 'https://placeimg.com/100/90/any',
            ),
            CardNoBorder(
              maxWidth: maxWidth,
              assets: 'assets/images/talenta6.png',
              title: 'Full Stack Web Laravel',
              price: '300.000',
              rate: '3.9',
              author: 'Fahmi',
              imgAuthor: 'https://placeimg.com/100/90/any',
            )
          ],
        )
      ],
    );
  }
}
