import 'package:flutter/material.dart';

class ScrollControllerMaterialPage extends StatefulWidget {
  const ScrollControllerMaterialPage({super.key});

  @override
  State<ScrollControllerMaterialPage> createState() =>
      _ScrollControllerMaterialPageState();
}

class _ScrollControllerMaterialPageState
    extends State<ScrollControllerMaterialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("6.4 ScrollControllerTestRoute")),
      body: const ScrollControllerTestRoute(),
    );
  }
}

class ScrollControllerTestRoute extends StatefulWidget {
  const ScrollControllerTestRoute({super.key});

  @override
  ScrollControllerTestRouteState createState() {
    return ScrollControllerTestRouteState();
  }
}

class ScrollControllerTestRouteState extends State<ScrollControllerTestRoute> {
  final ScrollController _controller = ScrollController();
  bool showToTopBtn = false; //是否显示“返回到顶部”按钮

  @override
  void initState() {
    super.initState();
    //监听滚动事件
    _controller.addListener(() {
      if (_controller.offset < 1000 && showToTopBtn) {
        setState(() {
          showToTopBtn = false;
        });
      } else if (_controller.offset >= 1000 && showToTopBtn == false) {
        setState(() {
          showToTopBtn = true;
        });
      }
    });
  }

  @override
  void dispose() {
    //为了避免内存泄露，需要调用_controller.dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        child: ListView.builder(
            itemCount: 100,
            itemExtent: 50.0, //列表项高度固定时，显式指定高度是一个好习惯(性能消耗小)
            controller: _controller,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text("$index"),
              );
            }),
      ),
      floatingActionButton: !showToTopBtn
          ? null
          : FloatingActionButton(
              child: const Icon(Icons.arrow_upward),
              onPressed: () {
                //返回到顶部时执行动画
                _controller.animateTo(
                  .0,
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.ease,
                );
              }),
    );
  }
}
