import 'package:flutter/material.dart';
import 'package:subscription_tracker/res/res.dart';
import 'package:subscription_tracker/widget/tt_textfield_widget.p.dart';

Future showTextfieldDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: const _DialogWidget(),
        title: Text(
          'Title',
          style: St.body24700.copyWith(color: Cl.colorFFFFFF),
        ),
        backgroundColor: Cl.color1C1C23,
        actions: [
          MaterialButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              'Cancer',
              style: St.body20700.copyWith(color: Cl.colorFFFFFF),
            ),
          ),
          MaterialButton(
            onPressed: () {},
            child: Text(
              'OK',
              style: St.body20700.copyWith(color: Cl.colorFFFFFF),
            ),
          )
        ],
      );
    },
  );
}

class _DialogWidget extends StatefulWidget {
  const _DialogWidget({Key? key}) : super(key: key);

  @override
  _DialogWidgetState createState() => _DialogWidgetState();
}

class _DialogWidgetState extends State<_DialogWidget> {
  @override
  Widget build(BuildContext context) {
    return const TTTextField();
  }
}
