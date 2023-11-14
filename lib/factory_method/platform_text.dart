import 'package:flutter/material.dart';

abstract class PlatformText {
  Color color();
  Widget build(String text);

  factory PlatformText(TargetPlatform platform) {
    switch (platform) {
      case TargetPlatform.android:
        return AndroidText();
      case TargetPlatform.iOS:
        return IOSText();
      default:
        return AndroidText();
    }
  }
}

class AndroidText implements PlatformText {
  @override
  Widget build(String text) {
    return Text(text);
  }

  @override
  Color color() {
    return Colors.amber;
  }
}

class IOSText implements PlatformText {
  @override
  Widget build(String text) {
    return Text(
      text,
      style: TextStyle(color: color()),
    );
  }

  @override
  Color color() {
    return Colors.pink;
  }
}
