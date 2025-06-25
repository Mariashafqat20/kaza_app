import 'package:my_bookey/bookey/view/auth/splash_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 4),
          () {
        if (mounted) {
          // Navigate to the login screen
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => login_screen(),
            ),
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Image.asset(
            'assets/images/front.jpeg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          // Centered CircleAvatar and Text
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // CircleAvatar in the center
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/first.jpeg'),
                  radius: 60, // Adjust the size as needed
                ),
                const SizedBox(height: 20), // Spacing between CircleAvatar and Text
                // Text below the CircleAvatar
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Where Every Moment Counts',
                    style: TextStyle(
                      color: Colors.pink,
                      fontWeight: FontWeight.bold,
                      fontSize: 20, // Smaller font size
                      fontStyle: FontStyle.normal,
                    ),
                    textAlign: TextAlign.center, // Center-align the text
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

login_screen() {
}
