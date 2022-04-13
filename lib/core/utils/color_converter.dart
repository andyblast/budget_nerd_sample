import 'dart:math';

import 'package:flutter/material.dart';
import 'package:budget_nerd/core/ui/index.dart';

class ColorConverter {
  late Map<String, Color> colorsMap;

  ColorConverter() {
    colorsMap = {
      'RED': RED,
      'PINK': PINK,
      'LIGHT_PINK': LIGHT_PINK,
      'PURPLE': PURPLE,
      'DEEP_PURPLE': DEEP_PURPLE,
      'INDIGO': INDIGO,
      'BLUE': BLUE,
      'LIGHT_BLUE': LIGHT_BLUE,
      'CYAN': CYAN,
      'LIGHT_CYAN': LIGHT_CYAN,
      'MINT': MINT,
      'TEAL': TEAL,
      'GREEN': GREEN,
      'LIGHT_GREEN': LIGHT_GREEN,
      'LIME': LIME,
      'YELLOW': YELLOW,
      'AMBER': AMBER,
      'ORANGE': ORANGE,
      'DEEP_OGANGE': DEEP_OGANGE,
      'BROWN': BROWN,
      'GREY': GREY,
      'BLUE_GREY': BLUE_GREY,
      'DEEP_BLUE_GREY': DEEP_BLUE_GREY,
      'BLACK': BLACK,
    };
  }

  List<Color> getAllColors() {
    var result = <Color>[];
    colorsMap.forEach((key, value) => result.add(value));
    return result;
  }

  String getRandomColorName() {
    return colorsMap.keys.elementAt(Random().nextInt(colorsMap.length));
  }

  Color getColor(String name) {
    return colorsMap[name] ?? YELLOW_COLOR;
  }

  String getColorsName(Color color) {
    var key = colorsMap.keys.firstWhere((k) => colorsMap[k] == color);
    return key;
  }
}
