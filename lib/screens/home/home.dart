import 'package:flutter/material.dart';
import 'package:plant/constants.dart';

import 'components/header_with_search_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'components/recommended_plants.dart';
import 'components/title_with_more_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      appBar: AppBar(
          // leading: IconButton(
          //   // icon: SvgPicture.asset('assets/icons/menu.svg'),
          //   onPressed: () {},
          // ),
          ),
      body: HomeBody(),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearch(),
          SizedBox(height: 0.03.sh),
          TitleWIthMoreButton(title: 'Recommended', onPress: () {}),
          RecommendPlants(),
          SizedBox(height: 0.01.sh),
          TitleWIthMoreButton(title: 'Featured Plant', onPress: () {}),

          FeaturedPlantSlide(),
          SizedBox(height: kDefaultPadding)
          // FeaturedPlantSlide(size: size)
        ],
      ),
    );
  }
}

class FeaturedPlantSlide extends StatelessWidget {
  FeaturedPlantSlide();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturedPlant(
              onPress: () {}, imageUrl: 'assets/images/bottom_img_1.png'),
          FeaturedPlant(
              onPress: () {}, imageUrl: 'assets/images/bottom_img_2.png'),
        ],
      ),
    );
  }
}

class FeaturedPlant extends StatelessWidget {
  const FeaturedPlant({
    Key? key,
    required this.imageUrl,
    required this.onPress,
  }) : super(key: key);

  final String? imageUrl;
  final void Function() onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding,
            bottom: kDefaultPadding),
        height: 0.2.sh,
        width: 0.8.sw,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
                image: AssetImage(imageUrl!), fit: BoxFit.cover)),
      ),
    );
  }
}
