import 'package:flutter/material.dart';

import '../config.dart';

class ImageComponent extends StatelessWidget {
  final String image;

  const ImageComponent({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.all(Config.padding - 4,),
        child: Image.asset(
          image,
          width: 64,
        ),
      );
  }
}
