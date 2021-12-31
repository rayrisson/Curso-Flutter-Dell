import 'package:biblioteca_de_componentes/components/texts.dart';
import 'package:flutter/material.dart';

class ContainerText extends StatelessWidget {
  final String defaultText = "Texto base";

  const ContainerText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          const BaseText(text: 'Um texto base'),
          SmallText(text: 'Um texto bem pequeno'),
          MediumText(text: 'Um texto de tamanho médio'),
          BigText(text: 'Um texto grande'),
          GiantText(text: 'Um texto gigante'),
          BoldText(text: 'Um texto em négrito'),
          ItalicText(text: "Um texto em itálico")
        ]
      ),
    );
  }
}
