import 'package:flutter/material.dart';
import 'package:plant/constants.dart';

import 'header_with_underline.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleWIthMoreButton extends StatelessWidget {
  const TitleWIthMoreButton({
    Key? key,
    required this.title,
    required this.onPress,
  }) : super(key: key);

  final String title;
  final void Function() onPress;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        HeaderWithUnderline(label: title),
        FlatButton(
          color: kPrimaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
          child: Text('More',
              style: TextStyle(color: Colors.white, fontSize: 15.sp)),
          onPressed: onPress,
        )
      ]),
    );
  }
}
