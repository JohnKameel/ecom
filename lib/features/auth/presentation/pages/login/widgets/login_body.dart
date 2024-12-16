import 'package:advancedee/core/utils/size_config.dart';
import 'package:advancedee/core/widgets/custom_button.dart';
import 'package:advancedee/core/widgets/space_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VerticalSpace(12),
        SizedBox(
          child: Image.asset('assets/images/logo.png'),
          height: SizeConfig.defaultSize! * 17,
        ),
        Text.rich(
          TextSpan(
          style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 51,
          color: const Color(0xff69a03a),
        ),
        children: [
        TextSpan(
        text: 'F',
        style: TextStyle(
        fontWeight: FontWeight.w700,
        ),
        ),
        TextSpan(
        text: 'ruit Market',
        style: TextStyle(
        fontSize: 42,
        fontWeight: FontWeight.w700,
        ),
        ),
      ],
        ),
          textHeightBehavior:
          TextHeightBehavior(applyHeightToFirstAscent: false),
          textAlign: TextAlign.left,
        ),
        Expanded(child: SizedBox()),
        Row(
          children: [
            Flexible(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: CustomButtonWithIcon(
                    color: Color(0xFFdb3236),
                    iconData: FontAwesomeIcons.google,
                    text: 'Login with',
                ),
                ),
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: CustomButtonWithIcon(
                  color: Color(0xFFdb3236),
                  iconData: FontAwesomeIcons.facebook,
                  text: 'Login with',
                ),
              ),
            ),
          ],
        ),
        Expanded(child: SizedBox()),
      ],
    );
  }
}
