import 'package:flutter/material.dart';

class Build_MyScreen extends StatefulWidget {
  Build_MyScreen({
    required this.strTitle,
    required this.widBody,
    this.action,
    this.bottom
  });

  final String strTitle;
  final Widget widBody;
  final List<Widget>? action;
  Widget? bottom;

  @override
  State<Build_MyScreen> createState() => _Build_MyScreenState();
}

class _Build_MyScreenState extends State<Build_MyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(widget.strTitle),
          backgroundColor: Colors.blueAccent,
          actions: widget.action
      ),
      resizeToAvoidBottomInset: false,
      body: widget.widBody,
      bottomNavigationBar: widget.bottom,
    );
  }
}
