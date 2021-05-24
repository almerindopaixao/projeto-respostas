import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String _texto;
  final void Function() _quandoSelecionado;

  Resposta(this._texto, this._quandoSelecionado);

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue.shade400),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        ),
        child: Text(_texto),
        onPressed: _quandoSelecionado,
      ),
    );
  }
}
