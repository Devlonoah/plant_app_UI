import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plant/constants.dart';
import 'package:plant/screens/detail/detail.dart';

class PlantCard extends StatelessWidget {
  const PlantCard({
    Key? key,
    required this.imageIndex,
  }) : super(key: key);

  final String imageIndex;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Detail()));
      },
      child: Container(
        margin: EdgeInsets.only(
            top: kDefaultPadding / 2, left: kDefaultPadding, bottom: 0.03.sh),
        width: 0.4.sw,
        child: Column(
          children: [
            Image.asset('assets/images/image_$imageIndex.png'),
            Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 0.01.sh),
                      color: kPrimaryColor.withOpacity(0.23),
                      blurRadius: 50.0.sp,
                    ),
                  ]),
              child: Row(
                children: [
                  RichText(
                      text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Samantha\n'.toUpperCase(),
                        style: Theme.of(context).textTheme.button?.copyWith(
                            fontSize: 12.sp, fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                          text: 'Russia'.toUpperCase(),
                          style:
                              TextStyle(color: kPrimaryColor, fontSize: 10.sp))
                    ],
                  )),
                  Spacer(),
                  Text(
                    '\$440',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: kPrimaryColor, fontSize: 13.sp),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
