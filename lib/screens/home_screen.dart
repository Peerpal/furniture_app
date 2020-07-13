import 'package:flutter/material.dart';
import 'package:furniture/services/product_service.dart';
import 'package:furniture/utils/color_util.dart';
import 'package:furniture/views/camera_view.dart';
import 'package:furniture/views/products_view.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _currentView = 0;

  List<Widget> _views = [ProductView(), CameraDisplay()];
  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);
    return Scaffold(
      body: _views[_currentView],
      floatingActionButton: FloatingActionButton(
        child: Image.asset(
          "assets/icons/bag.png",
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CameraDisplay(),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        notchMargin: 5,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  icon: Icon(LineAwesomeIcons.compass),
                  onPressed: () {
                    setState(() {
                      _currentView = 0;
                    });
                  },
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
