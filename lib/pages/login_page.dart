import 'package:flutter/material.dart';
import 'package:my_learning_app/pages/home_page.dart';
import 'package:my_learning_app/themes/themes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final appBarHeight = mediaQuery.padding.top;
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: appBarHeight),
            Center(
              child: Image.asset(
                'assets/images/logo.png',
                width: 134,
                height: 24,
              ),
            ),
            SizedBox(height: 78),
            Center(
              child: Image.asset(
                'assets/images/banner1.png',
                width: 328,
                height: 160,
              ),
            ),
            SizedBox(height: 56),
            Text(
              'Build Your \nFuture Career',
              textAlign: TextAlign.start,
              style: boldBlackText.copyWith(
                fontSize: 28,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Pelajari keahlian baru, dan mulai akses \nkelasmu sekarang.',
              textAlign: TextAlign.start,
              style: regularGreyText.copyWith(fontSize: 16),
            ),
            SizedBox(height: 32),
            InkWell(
              borderRadius: BorderRadius.circular(40.0),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return HomePage();
                }));
              }, // needed
              child: Ink(
                width: 328,
                padding: const EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 30,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: primaryColor,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/google_login.png',
                      width: 24,
                      height: 24,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      'Login with Google',
                      style: regularBlackText.copyWith(fontSize: 16),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            InkWell(
              borderRadius: BorderRadius.circular(40.0),
              onTap: () {}, // needed
              child: Ink(
                width: 328,
                padding: const EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 30,
                ),
                decoration: BoxDecoration(
                  color: primaryColor,
                  border: Border.all(
                    color: primaryColor,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Login Into My Account',
                      style: regularBlackText.copyWith(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Belum punya akun ?',
                  style: regularBlackText,
                ),
                Text(
                  ' Daftar Sekarang',
                  style: regularBlackText.copyWith(color: primaryColor),
                ),
              ],
            )
          ],
        ));
  }
}
