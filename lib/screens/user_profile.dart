import 'package:fleischer_foundation/screens/home_screen.dart';
import 'package:fleischer_foundation/screens/people_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Rendering Name',
          style: TextStyle(
            color: Colors.black,
            fontStyle: FontStyle.normal,
            decoration: TextDecoration.underline,
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey.shade300,
            ),
            child: IconButton(
              icon: const Icon(
                CupertinoIcons.bell,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ),
          GestureDetector(
            child: SizedBox(
              height: 10.0,
              child: Image.asset(
                'assets/icon.png',
                scale: 20.0,
              ),
            ),
            onTap: () {},
          ),
        ],
      ),
  
      bottomNavigationBar: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) {
                      return const HomeScreen();
                    },
                  ),
                );
              },
              icon: const Icon(
                CupertinoIcons.home,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.person,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) {
                      return const CommunityScreen();
                    },
                  ),
                );
              },
              icon: const Icon(
                CupertinoIcons.person_3,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.bell,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
