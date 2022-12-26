import 'package:flutter/material.dart';

class RouteBackMaterialPage extends StatefulWidget {
  const RouteBackMaterialPage({super.key});

  @override
  State<RouteBackMaterialPage> createState() => _RouteBackMaterialPageState();
}

class _RouteBackMaterialPageState extends State<RouteBackMaterialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("7.1 导航返回拦截（WillPopScope）")),
      body: const WillPopScopeTestRoute(),
    );
  }
}

class WillPopScopeTestRoute extends StatefulWidget {
  const WillPopScopeTestRoute({super.key});

  @override
  WillPopScopeTestRouteState createState() {
    return WillPopScopeTestRouteState();
  }
}

class WillPopScopeTestRouteState extends State<WillPopScopeTestRoute> {
  DateTime? _lastPressedAt; //上次点击时间

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (_lastPressedAt == null ||
            DateTime.now().difference(_lastPressedAt!) >
                const Duration(seconds: 1)) {
          //两次点击间隔超过1秒则重新计时
          _lastPressedAt = DateTime.now();
          return false;
        }
        return true;
      },
      child: Container(
        alignment: Alignment.center,
        child: const Text("1秒内连续按两次返回键退出"),
      ),
    );
  }
}
