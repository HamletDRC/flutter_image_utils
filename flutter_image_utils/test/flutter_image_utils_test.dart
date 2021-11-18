import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_image_utils/flutter_image_utils.dart';

void main() {
  test('adds one to input values', () async {
    String profileAsBase64 = await convertImageAssetToString('assets/images/profile.jpg');
  });
}
