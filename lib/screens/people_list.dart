import 'package:fleischer_foundation/screens/home_screen.dart';
import 'package:fleischer_foundation/screens/user_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({super.key});

  @override
  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

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
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15.0,
                vertical: 15.0,
              ),
              child: Text(
                'Connect',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade700,
                ),
              ),
            ),

            // tab views
            TabBar(
              controller: _tabController,
              tabs: const [
                Tab(
                  child: Text(
                    'Members',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Communities',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
            // TabBarView
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  // Content for Tab 1
                  ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: 10,
                      );
                    },
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return ListTile(
                        // tileColor: Colors.amber,
                        leading: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade300,
                          ),
                          child: Image.asset('assets/icon.png'),
                        ),
                        title: const Text('Anna Mary'),
                        subtitle: const Text('Student'),
                      );
                    },
                  ),

                  // Content for Tab 2
                  ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: 10,
                      );
                    },
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return ListTile(
                        // tileColor: Colors.amber,
                        leading: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade300,
                          ),
                          child: Image.asset('assets/icon.png'),
                        ),
                        title: const Text('Anna Mary'),
                        subtitle: const Text('Mentor'),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
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
              onPressed: () {},
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
}
