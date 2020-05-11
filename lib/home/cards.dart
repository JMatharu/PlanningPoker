import 'package:flutter/material.dart';

class ScrumCard extends StatefulWidget {
  final String text;
  bool _isSelected = false; 
  final Function(String text) notifyParent;

  ScrumCard({Key key, @required this.text, this.notifyParent})
      : super(key: key);

  @override
  _ScrumCardState createState() => _ScrumCardState();
}

class _ScrumCardState extends State<ScrumCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget._isSelected = true;
        });
        widget.notifyParent(widget.text);
      },
      child: Card(
        color: widget._isSelected ? Colors.amber : Colors.white,
        child: Center(
            child: Text(
                    widget.text,
                    style: TextStyle(fontSize: 38),
                  )),
      ),
    );
  }
}