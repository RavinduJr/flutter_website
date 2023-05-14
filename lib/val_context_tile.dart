import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ValContextTile extends StatelessWidget {
  final String _label;
  final String _value;
  final Color _textColorLabel;
  final Color _textColorValue;
  const ValContextTile(
      this._label, this._value, this._textColorLabel, this._textColorValue,
      {super.key});

  @override
  Widget build(BuildContext context) {
    final textStyleLabel = TextStyle(fontSize: 20, color: _textColorLabel);
    final textStyleValue = TextStyle(fontSize: 20, color: _textColorValue);
    return Container(
      child: Column(
        children: [
          Text(_label, style: textStyleLabel),
          Text(_value, style: textStyleValue)
        ],
      ),
    );
  }
}
