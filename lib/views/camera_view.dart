import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:furniture/utils/color_util.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class CameraDisplay extends StatefulWidget {
  @override
  _CameraDisplayState createState() => _CameraDisplayState();
}

class _CameraDisplayState extends State<CameraDisplay> {
  CameraController _cameraController;
  List<CameraDescription> _cameras;

  bool _cameraActive = false;
  @override
  void initState() {
    super.initState();

    availableCameras().then((value) {
      _cameras = value;

      if (_cameras.length > 0) {
        _cameraController =
            CameraController(_cameras[0], ResolutionPreset.high);

        _cameraController.initialize().then((value) {
          if (!mounted) return;

          setState(() {
            _cameraActive = true;
          });
        });
      }
    });
  }

  @override
  void dispose() {
    _cameraController?.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData _themeData = Theme.of(context);
    final size = MediaQuery.of(context).size;
    var deviceRatio = size.width / size.height;
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              (!_cameraActive)
                  ? Container()
                  : Center(
                      child: Transform.scale(
                        scale:
                            _cameraController.value.aspectRatio / deviceRatio,
                        child: AspectRatio(
                          aspectRatio: _cameraController.value.aspectRatio,
                          child: CameraPreview(_cameraController),
                        ),
                      ),
                    ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            LineAwesomeIcons.camera,
                            color: Colors.white,
                            size: 28,
                          ),
                          onPressed: () {},
                        ),
                        Text(
                          "Point your camera at a furniture",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ],
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: HexColor("47474D"),
                      ),
                      child: Center(
                          child: Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                      )),
                    )
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                width: size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    width: size.width / 1,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: HexColor("47474D"),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Image.asset("assets/images/chair5.png"),
                        Column(
                          children: <Widget>[
                            Text(
                              "Elementum Chair",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      LineAwesomeIcons.dollar,
                                      color: HexColor("E0BC1D"),
                                      size: 16,
                                    ),
                                    SizedBox(width: 2),
                                    Text(
                                      "4.8",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(width: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "\$",
                                      style: TextStyle(
                                        color: HexColor("E0BC1D"),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(width: 2),
                                    Text(
                                      "250.00",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Icon(LineAwesomeIcons.arrow_right),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
