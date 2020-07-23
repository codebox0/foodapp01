import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class Plannedmeal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ResponsiveWidgets.init(
      context,
      height: 1920, // Optional
      width: 1080, // Optional
      allowFontScaling: true, // Optional
    );
    return ResponsiveWidgets.builder(
      height: 1920, // Optional
      width: 1080, // Optional
      allowFontScaling: true,
      child: Scaffold(
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                child: TextResponsive(
                  'My planned meal',
                  style: TextStyle(
                    fontFamily: 'SofiaPro-SemiBold',
                    fontSize: 50,
                    color: const Color(0xff130f10),
                    height: 1.2,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Planned_mealv2_card(
                path:
                    'Assets/pmv2/1501791674-delish-chicken-curry-horizontal copy.png',
                name: 'Mwxican rice with meat',
                star: 5,
                price: 35,
                steps: 5,
                intgrediants: 12,
                cost: 10,
                loScore: 23,
                hlthScore: 43,
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              title: TextResponsive(
                'Home',
                style: TextStyle(
                  fontFamily: 'SofiaPro-Medium',
                  fontSize: 35,
                  color: const Color(0x4d130f10),
                  height: 1.7142857142857142,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              title: TextResponsive(
                'Search',
                style: TextStyle(
                  fontFamily: 'SofiaPro-Medium',
                  fontSize: 35,
                  color: const Color(0x4d130f10),
                  height: 1.7142857142857142,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.reorder,
              ),
              title: TextResponsive(
                'Orders',
                style: TextStyle(
                  fontFamily: 'SofiaPro-Medium',
                  fontSize: 35,
                  color: const Color(0x4d130f10),
                  height: 1.7142857142857142,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_box,
              ),
              title: TextResponsive(
                'Profiles',
                style: TextStyle(
                  fontFamily: 'SofiaPro-Medium',
                  fontSize: 35,
                  color: const Color(0x4d130f10),
                  height: 1.7142857142857142,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Planned_mealv2_card extends StatelessWidget {
  final String path;
  final String name;
  final int star;
  final double price;
  final int steps;
  final int intgrediants;
  final int cost;
  final int loScore;
  final int hlthScore;
  Planned_mealv2_card(
      {this.path,
      this.name,
      this.star,
      this.price,
      this.steps,
      this.intgrediants,
      this.cost,
      this.hlthScore,
      this.loScore});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Image.asset(path),
            Container(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      TextResponsive(
                        name,
                        style: TextStyle(
                          fontFamily: 'SofiaPro-SemiBold',
                          fontSize: 50,
                          color: const Color(0xff130f10),
                        ),
                        textAlign: TextAlign.left,
                      ),
                      TextResponsive(
                        '\$$price',
                        style: TextStyle(
                          fontFamily: 'Gilroy-SemiBold',
                          fontSize: 70,
                          color: const Color(0xffff718b),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Image.asset('Assets/pmv2/star copy -9.png'),
                      Image.asset('Assets/pmv2/star copy -9.png'),
                      Image.asset('Assets/pmv2/star copy -9.png'),
                      Image.asset('Assets/pmv2/star copy -9.png'),
                      Image.asset('Assets/pmv2/star copy -9.png'),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset('Assets/pmv2/time copy 4.png'),
            Image.asset('Assets/pmv2/cooking copy 5.png'),
            Image.asset('Assets/pmv2/dollar copy 6.png'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            TextResponsive(
              '$steps steps',
              style: TextStyle(
                fontFamily: 'SofiaPro',
                fontSize: 35,
                color: const Color(0xff130f10),
                height: 1.1314285278320313,
              ),
            ),
            TextResponsive(
              '$intgrediants Ingrediants',
              style: TextStyle(
                fontFamily: 'SofiaPro',
                fontSize: 35,
                color: const Color(0xff130f10),
                height: 1.1314285278320313,
              ),
            ),
            TextResponsive(
              '\$$cost cost ',
              style: TextStyle(
                fontFamily: 'SofiaPro',
                fontSize: 35,
                color: const Color(0xff130f10),
                height: 1.1314285278320313,
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              width: 430.0.w,
              height: 120.0.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: const Color(0x80d9f1f4),
                border: Border.all(width: 1.0, color: const Color(0x809df4fa)),
              ),
              child: TextResponsive(
                '$loScore% leftover score',
                style: TextStyle(
                  fontFamily: 'SofiaPro-Medium',
                  fontSize: 40,
                  color: const Color(0xff55ccd4),
                  height: 1.95,
                ),
              ),
            ),
            Container(
              width: 430.0.w,
              height: 120.0.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: const Color(0x80d9f1f4),
                border: Border.all(width: 1.0, color: const Color(0x809df4fa)),
              ),
              child: TextResponsive(
                '$hlthScore% Health score',
                style: TextStyle(
                  fontFamily: 'SofiaPro-Medium',
                  fontSize: 40,
                  color: const Color(0xff55ccd4),
                  height: 1.95,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            GestureDetector(
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Color(0xFFE64445),
                    child: Icon(
                      Icons.delete,
                      color: Colors.white,
                    ),
                  ),
                  TextResponsive(
                    'Remove',
                    style: TextStyle(
                      fontFamily: 'SofiaPro',
                      fontSize: 35,
                      color: const Color(0xff130f10),
                      height: 1.1314285278320313,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            GestureDetector(
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Color(0xFF0CE061),
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                    ),
                  ),
                  TextResponsive(
                    'Mark as done',
                    style: TextStyle(
                      fontFamily: 'SofiaPro',
                      fontSize: 35,
                      color: const Color(0xff130f10),
                      height: 1.1314285278320313,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
