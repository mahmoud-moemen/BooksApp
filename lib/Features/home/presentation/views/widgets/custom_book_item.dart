
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6/3.9,
      child: Container(
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.red,
          image: const DecorationImage(image: AssetImage(AssetsData.book1),fit:BoxFit.cover ),
        ),
      ),
    );
  }
}