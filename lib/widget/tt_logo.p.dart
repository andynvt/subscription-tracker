import 'package:flutter/material.dart';
import 'package:subscription_tracker/res/res.dart';

class TTLogoWidget extends StatefulWidget {
  const TTLogoWidget({Key? key}) : super(key: key);

  @override
  _TTLogoWidgetState createState() => _TTLogoWidgetState();
}

class _TTLogoWidgetState extends State<TTLogoWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          Id.img_logo1,
          height: 29,
          width: 29,
        ),
        const SizedBox(width: 13),
        Image.asset(Id.img_logo)
      ],
    );
  }
}
