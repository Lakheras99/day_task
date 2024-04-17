import 'package:daytask/Custom_Widget/custom_button.dart';
import 'package:daytask/Screens/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    var heightScreen = MediaQuery.of(context).size.height;
    var widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFF212832),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: heightScreen * 0.4,
              width: widthScreen * 0.95,
              decoration: const BoxDecoration(color: Colors.white),
              child: Center(
                child: Image.asset(
                  'assets/images/pana.png',
                  height: heightScreen * 0.38,
                  width: widthScreen * 0.9,
                ),
              ),
            ),
            CustomButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );

                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const loginscreen(),
                //   ),
                // );
              },
              text: "Let's Start",
            ),
          ],
        ),
      ),
    );
  }
}
