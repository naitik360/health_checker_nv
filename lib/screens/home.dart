import 'package:flutter/material.dart';
import 'package:health_checker_nv/constants/app_constants.dart';
import 'package:health_checker_nv/widgets/left_side.dart';
import 'package:health_checker_nv/widgets/right_sized.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _heightController = TextEditingController();
  TextEditingController _weightController = TextEditingController();
  double _result = 0.0;
  String _textresult = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI CALCULATOR",
          style: TextStyle(color: accentColor, fontWeight: FontWeight.w300),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: mainColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 130,
                  child: TextField(
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w300,
                      color: accentColor,
                    ),
                    keyboardType: TextInputType.number,
                    controller: _heightController,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Height",
                        hintStyle: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.w300,
                          color: Colors.white.withOpacity(0.8),
                        )),
                  ),
                ),
                Container(
                  width: 130,
                  child: TextField(
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w300,
                      color: accentColor,
                    ),
                    keyboardType: TextInputType.number,
                    controller: _weightController,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Weight",
                        hintStyle: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.w300,
                          color: Colors.white.withOpacity(0.8),
                        )),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                double _h = double.parse(_heightController.text);
                double _w = double.parse(_weightController.text);
                setState(() {
                  _result = _w / (_h * _h);
                  if (_result > 25) {
                    _textresult = "You are over weight";
                  } else if (_result >= 18.5 && _result <= 25)
                    _textresult = "You are healthy";
                  else
                    _textresult = "You are under weight";
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      "Calculate",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: accentColor),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: Text(
                _result.toStringAsFixed(2),
                style: TextStyle(
                    fontSize: 90,
                    fontWeight: FontWeight.w500,
                    color: accentColor),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Visibility(
              visible: _textresult.isNotEmpty,
              child: Container(
                child: Text(
                  _textresult,
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w400,
                      color: accentColor),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Visibility(
              visible: _textresult.isNotEmpty,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _heightController.clear();
                    _weightController.clear();
                    _textresult = "";
                    _result = 0.0;
                  });
                },
                child: Container(
                  child: Text(
                    "Clear",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: accentColor),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            LeftSide(sizeWidth: 60),
            SizedBox(
              height: 30,
            ),
            LeftSide(sizeWidth: 120),
            SizedBox(
              height: 30,
            ),
            LeftSide(sizeWidth: 30),
            SizedBox(
              height: 30,
            ),
            RightSide(sizeWidth: 30),
            SizedBox(
              height: 30,
            ),
            RightSide(sizeWidth: 110),
            SizedBox(
              height: 30,
            ),
            RightSide(sizeWidth: 40),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
