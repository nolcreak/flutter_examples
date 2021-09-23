import 'dart:math';

import '../constants/picsum_constants.dart';

mixin PicsumService {
  static final _random = Random();

  static String getRandomImage({int? size}) {
    final baseURL = PicsumConstants.baseURL;
    final randomNumber = _random.nextDouble().toString().substring(2);
    final imgSize = size ?? PicsumConstants.defaultSize;

    return '$baseURL/$imgSize?$randomNumber';
  }
}
