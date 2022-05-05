import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class ImageController extends ChangeNotifier {
  File? image;

  //NB: should modify the 'info.plist' accordingly for iOS permissions
  // function to pick images from both gallery and camera(Android)
  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) return;
      final imageTemporary = File(image.path);
      this.image = imageTemporary;
      notifyListeners();
    } on PlatformException catch (e) {
      print('failed to pick image: $e');
    }
  }
}

//TODO: use the image as consumer in all areas need (provider)
