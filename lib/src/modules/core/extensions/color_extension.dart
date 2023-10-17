import 'package:flutter/material.dart';

extension ColorExension on Color {
  Color addBlack(double percentage) {
    final hexValue = value.toRadixString(16);
    final splited = _splitColor(hexValue);
    const rgbGoalValue = 255;

    final a = int.parse(splited[0], radix: 16);
    final r = int.parse(splited[1], radix: 16);
    final g = int.parse(splited[2], radix: 16);
    final b = int.parse(splited[3], radix: 16);

    final rPercentage = ((r * 100) / rgbGoalValue) - percentage;
    final gPercentage = ((g * 100) / rgbGoalValue) - percentage;
    final bPercentage = ((b * 100) / rgbGoalValue) - percentage;

    final newR = (rgbGoalValue * (rPercentage / 100)).round();
    final newG = (rgbGoalValue * (gPercentage / 100)).round();
    final newB = (rgbGoalValue * (bPercentage / 100)).round();

    return Color.fromARGB(a, newR, newG, newB);
  }

  Color addWhite(double percentage) {
    final hexValue = value.toRadixString(16);
    final splited = _splitColor(hexValue);
    const rgbGoalValue = 255;

    final a = int.parse(splited[0], radix: 16);
    final r = int.parse(splited[1], radix: 16);
    final g = int.parse(splited[2], radix: 16);
    final b = int.parse(splited[3], radix: 16);

    final rPercentage = ((r * 100) / rgbGoalValue) + percentage;
    final gPercentage = ((g * 100) / rgbGoalValue) + percentage;
    final bPercentage = ((b * 100) / rgbGoalValue) + percentage;

    final newR = (rgbGoalValue * (rPercentage / 100)).round();
    final newG = (rgbGoalValue * (gPercentage / 100)).round();
    final newB = (rgbGoalValue * (bPercentage / 100)).round();

    return Color.fromARGB(a, newR, newG, newB);
  }
}

List<String> _splitColor(String color) {
  const partLength = 2;
  var currentGroup = 1;

  String partOne = '';
  String partTwo = '';
  String partThree = '';
  String partFour = '';

  for (final letter in color.split('')) {
    if (currentGroup == 1) {
      partOne += letter;

      if (partOne.length == partLength) {
        currentGroup++;
        continue;
      }
    }

    if (currentGroup == 2) {
      partTwo += letter;

      if (partTwo.length == partLength) {
        currentGroup++;
        continue;
      }
    }

    if (currentGroup == 3) {
      partThree += letter;

      if (partThree.length == partLength) {
        currentGroup++;
        continue;
      }
    }

    if (currentGroup == 4) {
      partFour += letter;
    }
  }

  return [partOne, partTwo, partThree, partFour];
}
