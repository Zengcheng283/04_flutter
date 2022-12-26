// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'dart:math' as math;

class ContainerMaterialPage extends StatefulWidget {
  const ContainerMaterialPage({super.key});

  @override
  State<ContainerMaterialPage> createState() => _ContainerMaterialPageState();
}

class _ContainerMaterialPageState extends State<ContainerMaterialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("5 容器类组件")),
      body: Center(
          child: Column(
        children: [
          const Text(
            "1 填充（Padding）",
            style: TextStyle(fontSize: 40),
            textAlign: TextAlign.left,
          ),
          Padding(
            //上下左右各添加16像素补白
            padding: const EdgeInsets.all(16),
            child: Column(
              //显式指定对齐方式为左对齐，排除对齐干扰
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
                Padding(
                  //左边添加8像素补白
                  padding: EdgeInsets.only(left: 8),
                  child: Text("Hello world"),
                ),
                Padding(
                  //上下各添加8像素补白
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Text("I am Jack"),
                ),
                Padding(
                  // 分别指定四个方向的补白
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                  child: Text("Your friend"),
                ),
              ],
            ),
          ),
          const Text(
            "2 装饰容器（DecoratedBox）",
            style: TextStyle(fontSize: 40),
            textAlign: TextAlign.left,
          ),
          DecoratedBox(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.red, Colors.orange.shade700]), //背景渐变
                  borderRadius: BorderRadius.circular(3.0), //3像素圆角
                  boxShadow: const [
                    //阴影
                    BoxShadow(
                        color: Colors.black54,
                        offset: Offset(2.0, 2.0),
                        blurRadius: 4.0)
                  ]),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 18.0),
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                ),
              )),
          const Text(
            "3 变换（Transform）",
            style: TextStyle(fontSize: 40),
            textAlign: TextAlign.left,
          ),
          const Text(""),
          const Text(""),
          const Text(""),
          const Text(""),
          Container(
            color: Colors.black,
            child: Transform(
              alignment: Alignment.topRight, //相对于坐标系原点的对齐方式
              transform: Matrix4.skewY(0.3), //沿Y轴倾斜0.3弧度
              child: Container(
                padding: const EdgeInsets.all(8.0),
                color: Colors.deepOrange,
                child: const Text('Apartment for rent!'),
              ),
            ),
          ),
          const Text(""),
          const Text(""),
          const Text(""),
          const Text(""),
          DecoratedBox(
            decoration: const BoxDecoration(color: Colors.red),
            child: Transform.rotate(
              //旋转90度
              angle: math.pi / 2,
              child: const Text("Hello world"),
            ),
          ),
          const Text(""),
          const Text(""),
          const Text(""),
          const Text(""),
          DecoratedBox(
              decoration: const BoxDecoration(color: Colors.red),
              child: Transform.scale(
                  scale: 1.5, //放大到1.5倍
                  child: const Text("Hello world"))),
        ],
      )),
    );
  }
}
