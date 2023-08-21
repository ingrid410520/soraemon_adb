import 'package:flutter/material.dart';

class Build_ButtonHomemenu extends StatelessWidget {
  Build_ButtonHomemenu({required this.strName, required this.ButtonFunction});

  final String strName;
  final VoidCallback ButtonFunction;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
            onPressed: ButtonFunction,
            style: ButtonStyle(
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0))))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //imageIcon,
                Text(strName, style: TextStyle(fontSize: 20)),
                //Opacity(opacity: 0.0,child: imageIcon,)
              ],
            )),
      ),
    );
  }
}
