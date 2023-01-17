import 'package:devstream/models/models.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  SecondPage({Key? key, this.listViewUrl, this.name, this.models})
      : super(key: key);
  String? listViewUrl;
  String? name;
  Model? models;
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // title: Text('${widget.models!.name}'),
          ),
    );
  }
}
