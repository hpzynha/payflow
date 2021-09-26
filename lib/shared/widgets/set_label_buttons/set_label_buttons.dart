import 'package:flutter/material.dart';

import 'package:payflow/shared/widgets/divider_vertical/divider_vertical_widget.dart';
import 'package:payflow/shared/widgets/label_button/labels_button.dart';

class SetLabelButons extends StatelessWidget {
  final String primaryLabel;
  final VoidCallback primaryOnPressed;
  final String secondaryLabel;
  final VoidCallback secondaryOnpressed;
  const SetLabelButons({
    Key? key,
    required this.primaryLabel,
    required this.primaryOnPressed,
    required this.secondaryLabel,
    required this.secondaryOnpressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      child: Row(
        children: [
          Expanded(
            child: LabelButton(
              label: primaryLabel,
              onPressed: primaryOnPressed,
            ),
          ),
          DividerVerticalWidget(),
          Expanded(
            child: LabelButton(
              label: secondaryLabel,
              onPressed: secondaryOnpressed,
            ),
          ),
        ],
      ),
    );
  }
}
