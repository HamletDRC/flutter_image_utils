# flutter_simple_image_utils

A small image utils package for flutter written in dart.

Usage: 

```
import 'package:flutter_simple_image_utils/flutter_simple_image_utils.dart';

String profileAsBase64 = await convertImageAssetToString('assets/images/profile.jpg');
String fileAsBase64 = await convertImageFileToString(file);
String? uiImageAsBase64 = await convertUiImageToString(uiImage);
```