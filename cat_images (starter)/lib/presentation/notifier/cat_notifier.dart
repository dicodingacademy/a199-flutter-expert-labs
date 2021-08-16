import 'package:cat_images/data/repositories/cat_repository.dart';
import 'package:cat_images/domain/models/cat_image.dart';
import 'package:flutter/foundation.dart';

class CatNotifier extends ChangeNotifier {
  CatImage? _image;
  CatImage? get image => _image;

  final CatRepository _repository;

  CatNotifier(this._repository);

  void getCatImage() async {
    _image = await _repository.getCatImage();
    notifyListeners();
  }
}
