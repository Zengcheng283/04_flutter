// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class HeroAnimatedMaterialPage extends StatefulWidget {
  const HeroAnimatedMaterialPage({super.key});

  @override
  State<HeroAnimatedMaterialPage> createState() =>
      _HeroAnimatedMaterialPageState();
}

class _HeroAnimatedMaterialPageState extends State<HeroAnimatedMaterialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("9.4 Hero动画"),
      ),
      body: const HeroAnimationRouteA(),
    );
  }
}

class HeroAnimationRouteA extends StatelessWidget {
  const HeroAnimationRouteA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: Column(
        children: <Widget>[
          InkWell(
            child: Hero(
              tag: "avatar", //唯一标记，前后两个路由页Hero的tag必须相同
              child: ClipOval(
                child: Image.asset(
                  "avatar.jpeg",
                  width: 50.0,
                ),
              ),
            ),
            onTap: () {
              //打开B路由
              Navigator.push(context, PageRouteBuilder(
                pageBuilder: (
                  BuildContext context,
                  animation,
                  secondaryAnimation,
                ) {
                  return FadeTransition(
                    opacity: animation,
                    child: Scaffold(
                      appBar: AppBar(
                        title: const Text("原图"),
                      ),
                      body: const HeroAnimationRouteB(),
                    ),
                  );
                },
              ));
            },
          ),
          const Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Text("点击头像"),
          )
        ],
      ),
    );
  }
}

class HeroAnimationRouteB extends StatelessWidget {
  const HeroAnimationRouteB({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Hero(
        tag: "avatar", //唯一标记，前后两个路由页Hero的tag必须相同
        child: Image.asset("avatar.jpeg"),
      ),
    );
  }
}
