import 'package:flutter/material.dart';
import 'package:subscription_tracker/res/res.dart';

class TTLogoWidget extends StatelessWidget {
  final double? height;

  const TTLogoWidget({Key? key, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          Id.img_logo1,
          height: height ?? 29,
          width: height ?? 29,
        ),
        const SizedBox(width: 13),
        Image.asset(
          Id.img_logo,
          height: height ?? 29,
          width: 100,
          fit: BoxFit.contain,
          color: Cl.colorFFFFFF,
        ),
      ],
    );
  }
}
