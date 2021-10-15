import 'package:flutter/material.dart';
import 'package:performance_issues/fifth_page.dart';
import 'package:performance_issues/first_page.dart';
import 'package:performance_issues/fourth_page.dart';
import 'package:performance_issues/second_page.dart';
import 'package:performance_issues/third_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        FirstPage.routeName: (context) => const FirstPage(),
        SecondPage.routeName: (context) => const SecondPage(),
        ThirdPage.routeName: (context) => const ThirdPage(),
        FourthPage.routeName: (context) => const FourthPage(),
        FifthPage.routeName: (context) => const FifthPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 2 / 1,
          children: [
            Card(
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, FirstPage.routeName);
                },
                child: Container(
                  color: Colors.blueGrey,
                  padding: const EdgeInsets.all(16),
                  child: Stack(
                    children: const [
                      Text(
                        '1',
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, SecondPage.routeName);
                },
                child: Container(
                  color: Colors.lightGreen,
                  padding: const EdgeInsets.all(16),
                  child: Stack(
                    children: const [
                      Text(
                        '2',
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, ThirdPage.routeName);
                },
                child: Container(
                  color: Colors.lightBlue,
                  padding: const EdgeInsets.all(16),
                  child: Stack(
                    children: const [
                      Text(
                        '3',
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, FourthPage.routeName);
                },
                child: Container(
                  color: Colors.orange,
                  padding: const EdgeInsets.all(16),
                  child: Stack(
                    children: const [
                      Text(
                        '4',
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, FifthPage.routeName);
                },
                child: Container(
                  color: Colors.indigo,
                  padding: const EdgeInsets.all(16),
                  child: Stack(
                    children: const [
                      Text(
                        '5',
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
