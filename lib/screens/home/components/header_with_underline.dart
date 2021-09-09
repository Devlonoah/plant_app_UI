import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plant/constants.dart';

class HeaderWithUnderline extends StatelessWidget {
  const HeaderWithUnderline({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              label,
              style: TextStyle(fontSize: 15.0.sp, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
              right: 0,
              left: 0,
              bottom: 0,
              child: Container(
                  margin: EdgeInsets.only(left: kDefaultPadding / 4),
                  height: 0.003.sh,
                  color: kPrimaryColor.withOpacity(0.5)))
        ],
      ),
    );
  }
}
