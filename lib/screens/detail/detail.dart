import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plant/constants.dart';

class Detail extends StatelessWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailBody(),
    );
  }
}

class DetailBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(),
          SizedBox(height: 0.03.sh),
          SellernameAndPrice(),
          SizedBox(height: ScreenUtil().bottomBarHeight + 27),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 0.1.sh,
              width: 0.5.sw,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30.r),
                ),
              ),
              child: Center(
                child: Text(
                  "Buy now",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SellernameAndPrice extends StatelessWidget {
  const SellernameAndPrice({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          RichText(
              text: TextSpan(
            children: [
              TextSpan(
                text: 'Samantha\n',
                style: Theme.of(context)
                    .textTheme
                    .button
                    ?.copyWith(fontSize: 30.0.sp, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                  text: 'Russia'.toUpperCase(),
                  style: TextStyle(color: kPrimaryColor, fontSize: 14.sp))
            ],
          )),
          Spacer(),
          Text(
            '\$ 410',
            style: TextStyle(
                fontSize: 20.sp,
                color: kPrimaryColor,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 0.75.sh,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: SideView()),
          Container(
            height: 0.85.sh,
            width: 0.75.sw,
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                ),
                image: DecorationImage(
                  image: AssetImage('assets/images/img.png'),
                  fit: BoxFit.cover,
                )),
          ),
        ],
      ),
    );
  }
}

class SideView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // //TODO: Add width
      height: 0.7.sh,
      child: Column(
        children: [
          SizedBox(height: ScreenUtil().statusBarHeight + 0.03.sh),
          Align(
            alignment: Alignment.topCenter,
            child: _cardWIthIcon(Icons.arrow_back, onTap: () {
              Navigator.pop(context);
            }),
          ),
          Spacer(),
          _cardWIthIcon(Icons.workspaces_outline),
          _cardWIthIcon(Icons.wb_sunny_outlined),
          _cardWIthIcon(Icons.motion_photos_on_sharp),
          _cardWIthIcon(Icons.wb_auto_sharp)
        ],
      ),
    );
  }
}

Widget _cardWIthIcon(IconData icon, {void Function()? onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.all(13.0.r),
      margin: EdgeInsets.symmetric(vertical: 0.02.sh),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
        boxShadow: [
          BoxShadow(
            color: kPrimaryColor.withOpacity(0.4),
            spreadRadius: 2,
            blurRadius: 10,
          ),
        ],
      ),
      child: Icon(
        icon,
        color: kPrimaryColor,
        size: 18.r,
      ),
    ),
  );
}
