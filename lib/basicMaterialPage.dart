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
            const Text(
              "1.2 TextStyle",
              style: TextStyle(fontSize: 40),
              textAlign: TextAlign.left,
            ),
            Text(
              "Hello world",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18.0,
                  height: 1.2,
                  fontFamily: "Courier",
                  background: Paint()..color = Colors.yellow,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.dashed),
            ),
            const Text(
              "1.3 TextSpan",
              style: TextStyle(fontSize: 40),
              textAlign: TextAlign.left,
            ),
            const Text.rich(TextSpan(children: [
              TextSpan(text: "Home: "),
              TextSpan(
                text: "https://flutterchina.club",
                style: TextStyle(color: Colors.blue),
              ),
            ])),
            const Text(
              "2.1 ElevatedButton",
              style: TextStyle(fontSize: 40),
              textAlign: TextAlign.left,
            ),
            ElevatedButton(
              child: const Text("normal"),
              onPressed: () {},
            ),
            const Text(
              "2.2 TextButton",
              style: TextStyle(fontSize: 40),
              textAlign: TextAlign.left,
            ),
            TextButton(
              child: const Text("normal"),
              onPressed: () {},
            ),
            const Text(
              "2.3 OutlineButton",
              style: TextStyle(fontSize: 40),
              textAlign: TextAlign.left,
            ),
            OutlinedButton(
              child: const Text("normal"),
              onPressed: () {},
            ),
            const Text(
              "2.4 IconButton",
              style: TextStyle(fontSize: 40),
              textAlign: TextAlign.left,
            ),
            IconButton(
              icon: const Icon(Icons.thumb_up),
              onPressed: () {},
            ),
            const Text(
              "2.5 带图标的按钮",
              style: TextStyle(fontSize: 40),
              textAlign: TextAlign.left,
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.send),
              label: const Text("发送"),
              onPressed: () {},
            ),
            OutlinedButton.icon(
              icon: const Icon(Icons.add),
              label: const Text("添加"),
              onPressed: () {},
            ),
            TextButton.icon(
              icon: const Icon(Icons.info),
              label: const Text("详情"),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
