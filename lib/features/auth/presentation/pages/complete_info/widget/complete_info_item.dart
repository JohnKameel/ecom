import 'package:advancedee/core/widgets/custom_text_field.dart';
import 'package:advancedee/core/widgets/space_widget.dart';
import 'package:flutter/material.dart';

class CompleteInfoItem extends StatelessWidget {
  const CompleteInfoItem({super.key, required this.text, this.inputType, this.maxLines});
  final String text;
  final TextInputType? inputType;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 16,
            color: Color(0xff0c0b0b),
            fontWeight: FontWeight.w600,
            height: 1.5,
          ),
          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
          textAlign: TextAlign.center,
        ),
        VerticalSpace(2),
        CustomTextField(
          maxLines: maxLines,
          inputType: inputType,
        ),
      ],
    );
  }
}
