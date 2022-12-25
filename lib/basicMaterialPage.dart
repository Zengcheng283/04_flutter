import 'package:flutter/material.dart';

class BasicMaterialPage extends StatefulWidget {
  const BasicMaterialPage({super.key});

  @override
  State<StatefulWidget> createState() => _BasicMaterialPage();
}

class _BasicMaterialPage extends State<BasicMaterialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("文本及样式")),
      body: Center(
        child: Column(
          children: [
            const Text(
              "1.1 Text",
              style: TextStyle(fontSize: 40),
              textAlign: TextAlign.left,
            ),
            const Text(
              "Hello world",
              textAlign: TextAlign.left,
            ),
            Text(
              "Hello world! I'm Jack. " * 4,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const Text(
              "Hello world",
              textScaleFactor: 1.5,
            ),
          ],
        ),
      ),
    );
  }
}
