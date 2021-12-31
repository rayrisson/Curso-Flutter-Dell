import 'package:flutter/material.dart';

class BaseText extends StatelessWidget {
  final String text;
  final double size;
  final bool bold;
  final bool italic;

  const BaseText({Key? key, required this.text, this.size = 14, this.bold = false, this.italic = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        fontWeight: bold ? FontWeight.bold : FontWeight.normal,
        fontStyle: italic ? FontStyle.italic : FontStyle.normal,
      ),
    );
  }
}

class SmallText extends BaseText{
  SmallText({required String text}) : super(text: text, size: 10);
}

class MediumText extends BaseText{
  MediumText({required String text}) : super(text: text, size: 16);
}

class BigText extends BaseText{
  BigText({required String text}) : super(text: text, size: 26);
}

class GiantText extends BaseText{
  GiantText({required String text}) : super(text: text, size: 42);
}

class BoldText extends BaseText{
  BoldText({required String text}) : super(text: text, bold: true);
}

class ItalicText extends BaseText{
  ItalicText({required String text}) : super(text: text, italic: true);
}
