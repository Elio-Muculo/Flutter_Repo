import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

// RichText usando para dar estilo a um texto
// quando usando [Widget] Text ele apenas aplica
// o mesmo estilo para todo o text
// RichText ajuda a estilzar cada parte do texto usando os children TextSpan

class TextLesson extends StatelessWidget {
  const TextLesson({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
      List<TextSpan> textspans = <TextSpan>[
        TextSpan(text: "entrar", style: const TextStyle(color: Colors.blue),
            recognizer: TapGestureRecognizer()
            ..onTap = () {
              // fazer algo ao clicar no [TextSpan] entrar
            }
        ),
        const TextSpan(text: "mundo", style: TextStyle(fontSize: 16)),
        const TextSpan(text: "dark", style: TextStyle(fontSize: 16, color: Colors.amber))
      ];


    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: DefaultTextStyle( // todos widgets subtree vao herdar o estilo caso não tenham....
        style: const TextStyle(color: Colors.black, fontSize: 20),
        child: Center(
          child: RichText(
            text: TextSpan(
              text: "ola mundo",
              children: textspans,
            ),
          ),
        ),
      ),
    );
  }
}


