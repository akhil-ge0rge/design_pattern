import 'package:design_pattern/factory_method/platform_indicator.dart';
import 'package:design_pattern/factory_method/platform_botton.dart';
import 'package:design_pattern/factory_method/platform_text.dart';
import 'package:flutter/material.dart';

// abstract class AbstractFactory {
//   Widget buildButton(BuildContext context, String text, VoidCallback onPressed);
//   Widget buildIndicator(BuildContext context);
// }

class AbstractFactoryImplementation
// implements AbstractFactory
{
  // @override
  static Widget buildButton(
      BuildContext context, String text, VoidCallback onPressed) {
    return PlatformButton(Theme.of(context).platform)
        .build(onPressed, Text(text));
  }

  // @override
  static Widget buildIndicator(BuildContext context) {
    return PlatformIndicator(Theme.of(context).platform).build();
  }

  static Widget buildText(BuildContext context, String text) {
    return PlatformText(Theme.of(context).platform).build(text);
  }
}
