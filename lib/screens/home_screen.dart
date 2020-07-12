import 'package:flutter/material.dart';
import 'package:furniture/services/product_service.dart';
import 'package:furniture/utils/color_util.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ProductService _productService = ProductService();
  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(top: 30),
        child: Column(
          children: <Widget>[
            SingleChildScrollView(
              child: Flex(
                direction: Axis.vertical,
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
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
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
                                border: Border.all(
                                    color: HexColor("979797"), width: .1),
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
                                border: Border.all(
                                    color: HexColor("979797"), width: .1),
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
                  ),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height / 1.5,
                    margin: EdgeInsets.symmetric(horizontal: 0),
                    padding: EdgeInsets.only(top: 15, left: 15, right: 0),
                    // color: Colors.red,
                    child:
                        ListView(scrollDirection: Axis.vertical, primary: false,
                            // padding: EdgeInsets.symmetric(horizontal: 15.0),
                            children: [
                          Wrap(
                            direction: Axis.horizontal,
                            spacing: 20,
                            children: _productService.products
                                .asMap()
                                .entries
                                .map((product) {
                              var position = product.key + 1;
                              return Container(
                                width: 180,
                                height: 265,
                                padding: EdgeInsets.only(top: 35),
                                margin: position.isEven
                                    ? EdgeInsets.only(top: 25, bottom: 10)
                                    : EdgeInsets.only(bottom: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13),
                                  color: HexColor("F8F8F8"),
                                  border: Border.all(
                                    color: HexColor("979797"),
                                    width: .1,
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Center(
                                      child: Image.asset(
                                        product.value['image'],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Flex(
                                      direction: Axis.vertical,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: Text(
                                            product.value['name'],
                                            style:
                                                _themeData.textTheme.headline5,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 15,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Text(
                                                    "\$",
                                                    style: TextStyle(
                                                      color: HexColor("E0BC1D"),
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  SizedBox(width: 2),
                                                  Text(
                                                    product.value['price']
                                                            .toString() +
                                                        ".00",
                                                    style: _themeData
                                                        .textTheme.bodyText2,
                                                  )
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Icon(
                                                    LineAwesomeIcons.star,
                                                    color: HexColor("E0BC1D"),
                                                    size: 16,
                                                  ),
                                                  SizedBox(width: 2),
                                                  Text(
                                                    product.value['rating']
                                                        .toString(),
                                                    style: _themeData
                                                        .textTheme.bodyText2,
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              );
                            }).toList(),
                          )
                        ]),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Image.asset(
          "assets/icons/bag.png",
          color: Colors.white,
        ),
        onPressed: () {
          print("clicked");
        },
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        notchMargin: 5,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  icon: Icon(LineAwesomeIcons.compass),
                  onPressed: () {},
                ),
              ),
              IconButton(
                icon: Icon(LineAwesomeIcons.search),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(LineAwesomeIcons.gear),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(LineAwesomeIcons.user),
                onPressed: () {},
              )
            ],
          ),
        ),
        shape: CircularNotchedRectangle(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
