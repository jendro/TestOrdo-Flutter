import 'package:flutter/material.dart';
import 'package:test_ordo/ui/screen/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: MaterialApp(
        title: 'TEST ORDO',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'OpenSans',
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: HomeScreen.id,
        builder: (context, child) {
          return ScrollConfiguration(
            behavior: MyBehavior(),
            child: child ?? SizedBox(),
          );
        },
        routes: {
          HomeScreen.id: (_) => HomeScreen(),
        },
      ),
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
