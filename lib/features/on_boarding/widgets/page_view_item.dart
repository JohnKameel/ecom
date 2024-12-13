import 'package:advancedee/core/utils/size_config.dart';
import 'package:advancedee/core/widgets/space_widget.dart';
import 'package:flutter/material.dart';

class PageViewItem extends StatelessWidget {
  PageViewItem({super.key, this.title, this.subtitle, this.image,});

  final String? title;
  final String? subtitle;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(22),
        SizedBox(
          height: SizeConfig.defaultSize! * 25,
            child: Image.asset(image!),
        ),
        const VerticalSpace(3),
        Text(
            title!,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20,
            color: Color(0xff2f2e41),
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.left,
        ),
        const VerticalSpace(1.5),
        Text(
          subtitle!,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
            fontSize: 15,
            color: Color(0xff78787c),
          ),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}
