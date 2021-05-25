import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int _pontuacao;
  final void Function() _quandoReiniciarQuestionario;

  Resultado(this._pontuacao, this._quandoReiniciarQuestionario);

  String get fraseResultado {
    if (_pontuacao < 8) {
      return 'Parabéns!';
    } else if (_pontuacao < 12) {
      return 'Você é bom!';
    } else if (_pontuacao < 16) {
      return 'Impressionante';
    } else {
      return 'Nível Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 28),
          ),
        ),
        Container(
          child: TextButton(
            onPressed: _quandoReiniciarQuestionario,
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue.shade400),
            ),
            child: Text('Reiniciar ?'),
          ),
        )
      ],
    );
  }
}
