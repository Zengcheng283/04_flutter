import 'package:flutter/material.dart';

class GestureDetectorMaterialPage extends StatefulWidget {
  const GestureDetectorMaterialPage({super.key});

  @override
  State<GestureDetectorMaterialPage> createState() =>
      _GestureDetectorMaterialPageState();
}

class _GestureDetectorMaterialPageState
    extends State<GestureDetectorMaterialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("8.2 手势识别")),
      body: const GestureTest(),
    );
  }
}

class GestureTest extends StatefulWidget {
  const GestureTest({super.key});

  @override
  State<GestureTest> createState() => _GestureTestState();
}

class _GestureTestState extends State<GestureTest> {
  String _operation = "No Gesture detected!";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        child: Container(
          alignment: Alignment.center,
          color: Colors.blue,
          width: 200.0,
          height: 100.0,
          child: Text(
            _operation,
            style: const TextStyle(color: Colors.white),
          ),
        ),
        onTap: () => updateText("Tap"), //点击
        onDoubleTap: () => updateText("DoubleTap"), //双击
        onLongPress: () => updateText("LongPress"), //长按
      ),
    );
  }

  void updateText(String text) {
    //更新显示的事件名
    setState(() {
      _operation = text;
    });
  }
}
