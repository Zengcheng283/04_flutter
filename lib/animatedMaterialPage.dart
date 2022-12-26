// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class AnimatedMaterialPage extends StatefulWidget {
  const AnimatedMaterialPage({super.key});

  @override
  State<AnimatedMaterialPage> createState() => _AnimatedMaterialPageState();
}

class _AnimatedMaterialPageState extends State<AnimatedMaterialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("9.2 动画基本结构及状态监听"),
      ),
      body: const ScaleAnimationRoute(),
    );
  }
}

class ScaleAnimationRoute extends StatefulWidget {
  const ScaleAnimationRoute({Key? key}) : super(key: key);

  @override
  _ScaleAnimationRouteState createState() => _ScaleAnimationRouteState();
}

//需要继承TickerProvider，如果有多个AnimationController，则应该使用TickerProviderStateMixin。
class _ScaleAnimationRouteState extends State<ScaleAnimationRoute>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 3), vsync: this);
    //使用弹性曲线
    animation = CurvedAnimation(parent: controller, curve: Curves.bounceIn);
    //图片宽高从0变到300
    animation = Tween(begin: 0.0, end: 300.0).animate(animation)
      ..addListener(() {
        setState(() => {});
      });
    //启动动画
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        "avatar.jpeg",
        width: animation.value,
        height: animation.value,
      ),
    );
  }

  @override
  dispose() {
    //路由销毁时需要释放动画资源
    controller.dispose();
    super.dispose();
  }
}
