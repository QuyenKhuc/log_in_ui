import 'package:flutter/material.dart';
import 'package:login_ui/signInPage.dart';
import 'package:login_ui/signUpPage.dart';

import 'const.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController _tabController;
  int index;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      setState(() {
        index = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(30.0),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      index == 0 ? 'assets/profile.png' : 'assets/user.png',
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Row(
                    children: [
                      TabBar(
                        indicatorSize: TabBarIndicatorSize.label,
                        isScrollable: true,
                        controller: _tabController,
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.black,
                        indicatorColor: Colors.black,
                        tabs: <Widget>[
                          Tab(
                            text: 'Sign In',
                          ),
                          Tab(
                            text: 'Sign Up',
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(right: 30.0),
          child: FloatingActionButton(
            onPressed: () {},
            elevation: 0.0,
            backgroundColor: index == 0 ? kBlue : kPink,
            child: Icon(
              Icons.arrow_forward,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        body: Container(
          child: Column(
            children: [
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    SignInPage(),
                    SignUpPage(),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 75.0,
                color: Colors.grey[200],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
