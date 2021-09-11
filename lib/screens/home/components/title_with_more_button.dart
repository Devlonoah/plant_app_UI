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
      padding: EdgeInsets.symmetric(horizontal: 0.045.sw),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        HeaderWithUnderline(label: title),
        SizedBox(
          height: 0.043.sh,
          width: 0.23.sw,
          child: FlatButton(
            color: kPrimaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0)),
            child: Text('More',
                style: TextStyle(color: Colors.white, fontSize: 14.sp)),
            onPressed: onPress,
          ),
        )
      ]),
    );
  }
}
