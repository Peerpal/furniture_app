import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:furniture/utils/color_util.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Top Rated",
                  style: _themeData.textTheme.headline1,
                ),
                Icon(LineAwesomeIcons.bars),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 80.0,
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              primary: false,
               padding: EdgeInsets.symmetric(horizontal: 15.0),
              children: <Widget>[
                Material(
                  elevation: 4,
                  borderRadius: BorderRadius.circular(10),
                  shadowColor: HexColor("979797"),
                  borderOnForeground: false,
                  child: Container(
                    decoration: BoxDecoration(
                        color: _themeData.primaryColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 15),
                      child: Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            "assets/icons/chair.png",
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Armchair",
                            style: _themeData.textTheme.bodyText1,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15),
                Material(
                  elevation: .1,
                  borderRadius: BorderRadius.circular(10),
                  shadowColor: HexColor("979797"),
                  borderOnForeground: false,
                  child: Container(
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: HexColor("979797"), width: .1),
                        color: HexColor("F8F8F8"),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 15),
                      child: Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            "assets/icons/bed.png",
                            color: HexColor("000000"),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Bed",
                            style: _themeData.textTheme.bodyText2,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15),
                Material(
                  elevation: .1,
                  borderRadius: BorderRadius.circular(10),
                  shadowColor: HexColor("979797"),
                  borderOnForeground: false,
                  child: Container(
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: HexColor("979797"), width: .1),
                        color: HexColor("F8F8F8"),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 15),
                      child: Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            "assets/icons/lamp.png",
                            color: HexColor("000000"),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Lamp",
                            style: _themeData.textTheme.bodyText2,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "147 products",
                  style: _themeData.textTheme.headline4,
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "Most popular",
                      style: _themeData.textTheme.headline5,
                    ),
                    SizedBox(width: 5),
                    Image.asset("assets/icons/dropdown.png")
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
