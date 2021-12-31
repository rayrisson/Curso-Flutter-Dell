import 'package:biblioteca_de_componentes/components/buttons.dart';
import 'package:flutter/material.dart';

class ContainerButton extends StatelessWidget {
  final Text defaultText = const Text("Texto base");
  final String defaultUrl = 'https://cdn-icons-png.flaticon.com/512/84/84384.png';

  const ContainerButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  DefaultButton(text: 'Botão base'),
                  BlueButton(text: 'Botão azul'),
                  GreenButton(text: 'Botão verde'),
              ]
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  RoundedButton(text: 'Botão arredondado base'),
                  RoundedBlueButton(text: 'Botão arredondado azul'),
                ]
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  RoundedYellowButton(text: 'Botão arredondado amarelo'),
                  ButtonWithIcon(text: 'Botão com ícone', url: defaultUrl),
                ]
            ),
            RedButtonWithIcon(text: 'Botão com ícone vermelho', url: defaultUrl)
          ]),
    );
  }
}
