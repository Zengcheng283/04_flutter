// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SingleChildScrollMaterialPage extends StatefulWidget {
  const SingleChildScrollMaterialPage({super.key});

  @override
  State<StatefulWidget> createState() => _SingleChildScrollMaterialPage();
}

class _SingleChildScrollMaterialPage
    extends State<SingleChildScrollMaterialPage> {
  String str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("6.2 SingleChildScroll")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            //动态创建一个List<Widget>
            children: str
                .split("")
                //每一个字母都用一个Text显示,字体为原来的两倍
                .map((c) => Text(
                      c,
                      textScaleFactor: 2.0,
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
