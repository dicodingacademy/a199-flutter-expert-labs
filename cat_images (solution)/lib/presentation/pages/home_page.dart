import 'package:cat_images/presentation/notifier/cat_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Consumer<CatNotifier>(
          builder: (context, notifier, child) {
            final catImage = notifier.image;
            return Center(
              child: catImage != null
                  ? Image.network(catImage.url)
                  : Text('Image not loaded yet'),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: () async {
          Provider.of<CatNotifier>(context, listen: false).getCatImage();
        },
      ),
    );
  }
}
