import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant/constants.dart';

class HeaderWithSearch extends StatefulWidget {
  const HeaderWithSearch({
    Key? key,
  }) : super(key: key);

  @override
  _HeaderWithSearchState createState() => _HeaderWithSearchState();
}

class _HeaderWithSearchState extends State<HeaderWithSearch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.25.sh,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            height: 0.25.sh - 27,
            decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40))),
            child: Row(
              children: [
                Text(
                  'Hi John',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0.sp,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Image(
                  image: AssetImage('assets/images/logo.png'),
                  height: 0.13.sh,
                  width: 0.15.sw,
                )
              ],
            ),
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                height: 0.07.sh,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: kPrimaryColor.withOpacity(0.5),
                          offset: Offset(0, -0.03),
                          blurRadius: 50)
                    ]),
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: 'Search',
                      hintStyle: TextStyle(
                          color: kPrimaryColor.withOpacity(0.5),
                          fontSize: 15.sp),
                      suffixIcon: IconButton(
                          icon: SvgPicture.asset('assets/icons/search.svg'),
                          onPressed: () {})),
                ),
              ))
        ],
      ),
    );
  }
}
