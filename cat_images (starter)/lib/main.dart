import 'package:cat_images/presentation/notifier/cat_notifier.dart';
import 'package:cat_images/data/repositories/cat_repository.dart';
import 'package:cat_images/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CatNotifier(
        CatRepository(
          Client(),
        ),
      ),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      ),
    );
  }
}
