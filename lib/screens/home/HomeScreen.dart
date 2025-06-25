import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:my_bookey/screens/home/Dashboard.dart';
import 'package:my_bookey/screens/home/SearchScreen.dart';
import 'package:my_bookey/screens/home/SettingScreen.dart'; 
import 'package:my_bookey/screens/auth/login_screen.dart';
import 'package:my_bookey/screens/auth/signup_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> _navigationItems = const [
    Icon(Icons.home),
    Icon(Icons.dashboard),
    Icon(Icons.settings),
    Icon(Icons.search),
  ];

  int _currentIndex = 0;

  final List<Widget> _screenList = [
    const HomeContent(), // This will be the home content widget
    const Dashboard(),
    const SettingScreen(),
    const SearchScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        items: _navigationItems,
        backgroundColor: Colors.white,
        color: Colors.lightGreen,
        index: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: _screenList[_currentIndex],
    );
  }
}



class HomeContent extends StatelessWidget {
  const HomeContent({super.key});



  Widget _buildPrayerContainer(String prayerName, String imagePath) {
    return Container(
      height: 200,
      width: 165,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.lightGreen,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: const Text('Sign Up'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignupScreen()),
                );
              },
            ),
            ListTile(
              title: const Text('Login'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text("Home"),
        backgroundColor: Colors.lightGreen,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 190,
                    decoration: BoxDecoration(
                      color: Colors.lightGreen,
                      image: const DecorationImage(
                        image: AssetImage('assets/images/mosque.jpeg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20, bottom: 30),
                                    child: Container(
                                      height: 55,
                                      width: 145,
                                      decoration: BoxDecoration(
                                        color: Colors.green[800],
                                        borderRadius: const BorderRadius.only(
                                          bottomRight: Radius.circular(45),
                                          bottomLeft: Radius.circular(45),
                                        ),
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.only(bottom: 5),
                                        child: Center(
                                          child: Text(
                                            "no more kaza",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 19,
                                              fontWeight: FontWeight.bold,

                                            ),
                                          ),

                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const Expanded(
                                  child:Padding(
                                    padding: EdgeInsets.only(left: 1),
                                    child: Text(" Assalam-o-Alaikum  السلام عليكم",style: TextStyle(
                                      fontSize: 20,
                                    ),),
                                  ),



                                ),

                              ],

                            ),
                          ),

                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // First section header
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("first"),
                    Text("view all", style: TextStyle(color: Colors.green[800])),
                  ],
                ),
              ),
              SizedBox(
                height: 220,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [

                      Container(
                        height: 200,
                        width: 165,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                ),
                                child: Image.asset(
                                  "assets/images/quran.jpeg",
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                "Quran",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(width: 15),

                      Container(
                        height: 200,
                        width: 165,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                ),
                                child: Image.asset(
                                  "assets/images/download.jpeg", // Different image
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                "Duas",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 15),
                      Container(
                        height: 200,
                        width: 165,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                ),
                                child: Image.asset(
                                  "assets/images/download.jpeg", // Different image
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                "Duas",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),


                    ],
                  ),
                ),
              ),
              const SizedBox(height: 25),

              // Daily Prayers section header
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Daily Prayers"),
                    Text("view all", style: TextStyle(color: Colors.green[800])),
                  ],
                ),
              ),
              // Daily Prayers containers - now in a Column
              SizedBox(height: 15,),
              SingleChildScrollView(scrollDirection: Axis.horizontal,
                child:Row(
                  children: [
                    Container(
                      height: 65,
                      width: 75,
                      color: Colors.green,
                    ),
                    SizedBox(width: 15,),
                    Container(
                      height: 65,
                      width: 75,
                      color: Colors.green,
                    ),
                    SizedBox(width: 15,),
                    Container(
                      height: 65,
                      width: 75,
                      color: Colors.green,
                    ),
                    SizedBox(width: 15,),
                    Container(
                      height: 65,
                      width: 75,
                      color: Colors.green,
                    ),
                    SizedBox(width: 15,),
                    Container(
                      height: 65,
                      width: 75,
                      color: Colors.green,
                    ),

                    SizedBox(height: 20),

                  ],
                ),

              ),


              SizedBox(height: 20),
            ],

          ),
        ),


      ),
    );
  }
}