import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:goljaam_education/controller/providers/api_providers/course_list_provider.dart';
import 'package:goljaam_education/controller/providers/api_providers/profile_state.dart';
import 'package:goljaam_education/controller/routes/routes.dart';
import 'package:goljaam_education/init_screen.dart';
import 'package:goljaam_education/model/global/global.dart';
import 'package:goljaam_education/view/home/home_screen.dart';
import 'package:goljaam_education/view/other/other_screen.dart';
import 'package:goljaam_education/view/profile/profile_screen.dart';
import 'package:provider/provider.dart';

import 'controller/providers/api_providers/task_state.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => GoljaamCourseListState(),
    ),
    ChangeNotifierProvider(
      create: (context) => TaskState(),
    ),
    ChangeNotifierProvider(
      create: (context) => ProfileState(),
    ),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        ErrorWidget.builder = (FlutterErrorDetails errorDetails) {
          return CustomError();
        };
        return child!;
      },
      onGenerateRoute: MyRoutes.onGenerateRoute,
      debugShowCheckedModeBanner: false,
      home: InitScreen(),
    );
  }
}

class CustomError extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 1;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  var _pages = [
    OtherGuysScreen(),
    HomeScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          height: 50,
          key: _bottomNavigationKey,
          index: 1,
          items: [
            Container(
                width: 35,
                height: 35,
                child: Icon(
                  Icons.people,
                  color: Colors.white,
                )),
            Container(
              width: 35,
              height: 35,
              child: Icon(
                Icons.home,
                color: Colors.white,
              ),
            ),
            Container(
              width: 35,
              height: 35,
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          ],
          color: primaryColor,
          backgroundColor: Colors.white,
          animationCurve: Curves.easeInOut,
          buttonBackgroundColor: primaryColor,
          animationDuration: Duration(milliseconds: 300),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
          letIndexChange: (index) => true,
        ),
        body: _pages[_page]);
  }
}
