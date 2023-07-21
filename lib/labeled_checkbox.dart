library common_widgets;

import 'package:flutter/material.dart';

class LabeledCheckbox extends StatelessWidget {
  const LabeledCheckbox({
    Key? key,
    required this.value,
    required this.title,
    this.onChanged,
  }) : super(key: key);

  final bool value;
  final String title;
  final ValueChanged<bool?>? onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Checkbox(
          value: value,
          onChanged: onChanged,
        ),
        Expanded(
          child: Text(title),
        ),
      ],
    );
  }
}
