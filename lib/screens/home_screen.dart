import 'package:fleischer_foundation/screens/people_list.dart';
import 'package:fleischer_foundation/screens/user_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Image.asset('assets/logo2.png'),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Upcoming Events",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Row(children: [
                    const Text(
                      "View All",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        CupertinoIcons.arrow_right,
                      ),
                    )
                  ]),
                ],
              ),
            ),
            horizontalListView(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            Icons.settings,
          )),
      bottomNavigationBar: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.home,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) {
                      return const UserProfileScreen();
                    },
                  ),
                );
              },
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
                CupertinoIcons.graph_square,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget upcomingEvents() {
    return SizedBox();
  }

  Widget horizontalListView() {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: SizedBox(
        height: 200,
        width: MediaQuery.of(context).size.width * 1,
        child: ListView.separated(
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: 10,
            );
          },
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, __) => Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 0.5,
                  blurRadius: 0.5,
                  offset: Offset(0, 0), // changes position of shadow
                ),
              ],
            ),
            // color: Colors.orange,
            height: 200,
            width: 180,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    const Image(
                      image: NetworkImage('https://picsum.photos/250?image=9'),
                      height: 100,
                      width: 250,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      bottom: 1,
                      left: 5,
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.all(4.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Colors.grey.shade200,
                          ),
                          child: const Icon(
                            Icons.door_back_door_outlined,
                            size: 20,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                // SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                  ),

                  // width: 200,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mentorship Program",
                        style: TextStyle(
                          fontFamily: 'Exo',
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),

                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_month_rounded,
                            size: 15,
                          ),
                          // label:
                          // Icon(icon)
                          Text(
                            ' Feb 1, 2023',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.place_outlined, size: 15),
                          Text(
                            "Ujamaa Family",
                            style: TextStyle(
                              // color: Colors.black,
                              fontWeight: FontWeight.w300,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      // TextButton.icon(
                      // onPressed: () {},
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
