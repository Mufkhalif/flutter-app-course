import 'package:flutter/material.dart';
import 'package:my_learning_app/themes/themes.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
          Expanded(
            child: Column(
              children: [
                Text(
                  'Dhimas Putra',
                  style: boldBlackText.copyWith(fontSize: 18),
                ),
                Text(
                  'Premium',
                  style: regularBlackText.copyWith(color: primaryColor),
                ),
              ],
            ),
          ),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              image: DecorationImage(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=676&q=80'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
