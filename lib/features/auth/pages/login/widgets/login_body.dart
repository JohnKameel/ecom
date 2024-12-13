import 'package:advancedee/core/utils/size_config.dart';
import 'package:advancedee/core/widgets/space_widget.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VerticalSpace(10),
        SizedBox(
          child: Image.asset('assets/images/logo.png'),
          height: SizeConfig.defaultSize! * 17,
        ),
        Text(
            'Fruit Market',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 51,
            color: Color(0xff69a)
          ),
        ),
      ],
    );
  }
}
