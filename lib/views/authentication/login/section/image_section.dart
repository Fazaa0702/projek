import 'package:flutter/material.dart';

class ImageLoginSection extends StatelessWidget {
  const ImageLoginSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 40.0),
      child: Image.asset(
        "assets/images/login-asset.png",
        height: 250,
      ),
    );
  }
}
