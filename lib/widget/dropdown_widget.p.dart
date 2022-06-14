import 'package:flutter/material.dart';
import 'package:subscription_tracker/res/res.dart';

class DropdownWidget extends StatefulWidget {
  const DropdownWidget({Key? key}) : super(key: key);

  @override
  _DropdownWidgetState createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: DropdownButton<String>(
        elevation: 8,
        dropdownColor: Cl.color353542,
        style: St.body12600,
        icon: const Icon(
          Icons.keyboard_arrow_down_outlined,
          color: Cl.colorFFFFFF,
        ),
        iconSize: 15,
        underline: const SizedBox(),
        onChanged: () {}(),
        items: <String>['One', 'Two', 'Free', 'Four'].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
