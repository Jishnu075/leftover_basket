import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:leftover_basket/camera_gallery.dart';

class RoundedPostCard extends StatelessWidget {
  const RoundedPostCard({Key? key, this.icon}) : super(key: key);
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    var _screensize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Container(
        width: _screensize.width,
        height: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color.fromARGB(255, 216, 216, 216),
        ),
        child: Icon(icon, size: 50),
      ),
    );
  }
}

class CameraCard extends StatelessWidget {
  const CameraCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _screenSize = MediaQuery.of(context).size;
    // return Padding(
    //   // padding: EdgeInsets.all(0),
    //   child:
    return InkWell(
      onTap: () async {
        Consumer<ImageController>(
          builder: (context, imageController, child) {
            imageController.pickImage();
            return Image.file(imageController.image!);
            //TODO: Error
          },
        );
      },
      child: Container(
        width: _screenSize.width,
        height: 200.0,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 216, 216, 216),
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Icon(
          Icons.camera,
          color: Colors.grey,
          size: 55,
        ),
      ),
    );
  }
}
