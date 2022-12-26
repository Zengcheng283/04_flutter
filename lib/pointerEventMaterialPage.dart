import 'package:flutter/material.dart';

class PointerEventMaterialPage extends StatefulWidget {
  const PointerEventMaterialPage({super.key});

  @override
  State<PointerEventMaterialPage> createState() =>
      _PointerEventMaterialPageState();
}

class _PointerEventMaterialPageState extends State<PointerEventMaterialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("8.1 原始指针事件处理")),
      body: const PointerMoveIndicator(),
    );
  }
}

class PointerMoveIndicator extends StatefulWidget {
  const PointerMoveIndicator({super.key});

  @override
  State<PointerMoveIndicator> createState() => _PointerMoveIndicatorState();
}

class _PointerMoveIndicatorState extends State<PointerMoveIndicator> {
  PointerEvent? _event;

  @override
  Widget build(BuildContext context) {
    return Listener(
      child: Container(
        alignment: Alignment.center,
        color: Colors.blue,
        width: 300.0,
        height: 150.0,
        child: Text(
          '${_event?.localPosition ?? ''}',
          style: const TextStyle(color: Colors.white),
        ),
      ),
      onPointerDown: (PointerDownEvent event) => setState(() => _event = event),
      onPointerMove: (PointerMoveEvent event) => setState(() => _event = event),
      onPointerUp: (PointerUpEvent event) => setState(() => _event = event),
    );
  }
}
