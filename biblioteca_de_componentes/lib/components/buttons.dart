import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final Color color;
  final String text;
  final double radius;

  const DefaultButton({Key? key, this.radius = 5, this.color = Colors.grey, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(radius))
          )
        ),
    );
  }
}

class RedButton extends DefaultButton{
  RedButton({required String text}) : super(color: Colors.red, text: text);
}

class BlueButton extends DefaultButton{
  BlueButton({required String text}) : super(color: Colors.blue, text: text);
}

class GreenButton extends DefaultButton{
  GreenButton({required String text}) : super(color: Colors.green, text: text);
}

class RoundedButton extends DefaultButton{
  RoundedButton({required String text, Color color = Colors.grey}) : super(text: text, radius: 50, color: color);
}

class RoundedBlueButton extends RoundedButton{
  RoundedBlueButton({required String text}) : super(text: text, color: Colors.blue);
}

class RoundedYellowButton extends RoundedButton{
  RoundedYellowButton({required String text}) : super(text: text, color: Colors.yellow);
}

class ButtonWithIcon extends StatelessWidget {
  final Color color;
  final String text;
  final String url;

  const ButtonWithIcon({Key? key, this.color = Colors.grey, required this.text, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.network(
            url,
            width: 24,
            height: 24,
          ),
          const SizedBox(width: 10),
          Text(
            text,
            style: const TextStyle(
              color: Colors.black,
            ),
          )
        ],
      ),
      style: ElevatedButton.styleFrom(
          primary: color
      ),
    );
  }
}

class RedButtonWithIcon extends ButtonWithIcon{
  RedButtonWithIcon({required String text, required String url}) : super(text: text, url: url, color: Colors.red);
}
