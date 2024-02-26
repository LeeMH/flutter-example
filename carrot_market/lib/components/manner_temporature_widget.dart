import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MannerTemperatureWidget extends StatelessWidget {
  final double mannerTemp;
  late int _level;
  final List<Color> tempColors = [
    const Color(0xff072038),
    const Color(0xff0d3a65),
    const Color(0xff186ec0),
    const Color(0xff37b24d),
    const Color(0xfff76707),
    const Color(0xfff76707),
  ];

  MannerTemperatureWidget({super.key, required this.mannerTemp}) {
    _calcTempLevel();
  }

  _calcTempLevel() {
    if (mannerTemp <= 20) {
      _level = 0;
    } else if (mannerTemp > 20 && mannerTemp <= 32) {
      _level = 1;
    } else if (mannerTemp > 32 && mannerTemp <= 36.5) {
      _level = 2;
    } else if (mannerTemp > 36.5 && mannerTemp <= 40) {
      _level = 3;
    } else if (mannerTemp > 40 && mannerTemp <= 50) {
      _level = 4;
    } else if (mannerTemp > 50) {
      _level = 5;
    }
  }

  Widget _makeTempLableAndBar() {
    return Container(
      width: 65,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${mannerTemp.toString()}°C",
            style: TextStyle(
                color: tempColors[_level],
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 6,
              color: Colors.grey.withOpacity(0.5),
              child: Row(
                children: [
                  Container(
                    height: 6,
                    width: 60 / 99 * mannerTemp,
                    color: tempColors[_level],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _makeTempLableAndBar(),
              SizedBox(
                width: 30,
                height: 30,
                child: Image.asset("assets/images/level-${_level}.jpg"),
              )
            ],
          ),
          const Text(
            "매너온도",
            style: TextStyle(
              decoration: TextDecoration.underline,
              fontSize: 12,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
