import 'package:flutter/material.dart';
import '../Data/DataManager.dart';

class Build_ButtonScreenback extends StatefulWidget {
  Build_ButtonScreenback({this.context, this.label, required this.routename, this.style});

  final BuildContext? context;
  final Widget? label;
  String routename = DataManager().Screen_Home;
  ButtonStyle? style;

  @override
  State<Build_ButtonScreenback> createState() => _Build_ButtonScreenbackState();
}

class _Build_ButtonScreenbackState extends State<Build_ButtonScreenback> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: Icon(Icons.arrow_back_rounded),
      //label: (widget.label == null ? Text("1") : Text("2") ),
      label: (widget.label == null ? Text("back to main") : widget.label!),
      style: widget.style,
      onPressed: () {
        if (Navigator.canPop(context)) {
          Navigator.pop(context);
        } else {
          Navigator.popAndPushNamed(context, widget.routename);
        }
      },
    );
  }
}
