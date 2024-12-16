import 'package:advancedee/core/widgets/custom_button.dart';
import 'package:advancedee/core/widgets/space_widget.dart';
import 'package:flutter/material.dart';

import 'complete_info_item.dart';

class CompleteInfoBody extends StatelessWidget {
  const CompleteInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(16),
      child: Column(
        children: [
          VerticalSpace(10),

          CompleteInfoItem(
            text: 'Enter your name',
          ),

          VerticalSpace(2),

          CompleteInfoItem(
            text: 'Enter your phone number',
          ),

          VerticalSpace(2),

          CompleteInfoItem(
            maxLines: 5,
            text: 'Enter your address',
          ),

          VerticalSpace(5),

          CustomButton(
            text: 'Login',
          ),
        ],
      ),
    );
  }
}
