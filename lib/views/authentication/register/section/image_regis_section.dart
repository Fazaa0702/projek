import 'package:flutter/material.dart';

class ImageRegisSection extends StatelessWidget {
  const ImageRegisSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 30.0),
      child: Image.asset(
        "assets/images/signup-asset.png",
        height: 160,
      ),
    );
  }
}
