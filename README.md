# flutter_image_utils
A small image utils package for flutter written in dart. 

```
import 'dart:convert';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

/// This function converts an image asset into a base 64 encoded
/// string. The imagePath parameter is the path to something in your
/// assets folder, for example "assets/images/profile.jpg".
Future<String> convertImageAssetToString(String imagePath) async {
  ByteData bytes = await rootBundle.load(imagePath);
  var buffer = bytes.buffer;
  return base64.encode(Uint8List.view(buffer));
}

/// This function converts an image file into a base 64 encoded
/// string. The image parameter is a cross-platfrom file. It is treated
/// as a list of bytes. This is useful if you are using tools
/// like crop to get a new image and then having to save the image
/// as a string.
Future<String> convertImageFileToString(XFile image) async {
  List<int> imageBytes = await image!.readAsBytes();
  return base64Encode(imageBytes);
}

/// This function converts a ui Image to a base 64 encoded string.
/// The image parameter is a ui.Image, such as what the crop tool
/// will give you after cropping an image. This is useful if you have
/// to save the ui.Image to storage (such as with Hive)
Future<String?> convertUiImageToString(ui.Image image) async {
  ByteData? data = await image.toByteData(format: ui.ImageByteFormat.png);
  if (data != null) {
    return base64Encode(Uint8List.view(data.buffer));
  } else {
    return null;
  }
}
```
