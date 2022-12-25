import 'package:flutter/material.dart';

class LayoutMaterialPage extends StatefulWidget {
  const LayoutMaterialPage({super.key});

  @override
  State<StatefulWidget> createState() => _LayoutMaterialPage();
}

class _LayoutMaterialPage extends State<LayoutMaterialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("布局类组件")),
        body: Center(
          child: Column(
            children: [
              const Text(
                "3.2 Row",
                style: TextStyle(fontSize: 40),
                textAlign: TextAlign.left,
              ),
              Column(
                //测试Row对齐方式，排除Column默认居中对齐的干扰
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text(" hello world "),
                      Text(" I am Jack "),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text(" hello world "),
                      Text(" I am Jack "),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    textDirection: TextDirection.rtl,
                    children: const <Widget>[
                      Text(" hello world "),
                      Text(" I am Jack "),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    verticalDirection: VerticalDirection.up,
                    children: const <Widget>[
                      Text(
                        " hello world ",
                        style: TextStyle(fontSize: 30.0),
                      ),
                      Text(" I am Jack "),
                    ],
                  ),
                ],
              ),
              const Text(
                "3.3 Column",
                style: TextStyle(fontSize: 40),
                textAlign: TextAlign.left,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const <Widget>[
                  Text("hi"),
                  Text("world"),
                ],
              ),
              const Text(
                "4.1 Flex",
                style: TextStyle(fontSize: 40),
                textAlign: TextAlign.left,
              ),
              Column(
                children: <Widget>[
                  //Flex的两个子widget按1：2来占据水平空间
                  Flex(
                    direction: Axis.horizontal,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 30.0,
                          color: Colors.red,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          height: 30.0,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: SizedBox(
                      height: 100.0,
                      //Flex的三个子widget，在垂直方向按2：1：1来占用100像素的空间
                      child: Flex(
                        direction: Axis.vertical,
                        children: <Widget>[
                          Expanded(
                            flex: 2,
                            child: Container(
                              height: 30.0,
                              color: Colors.red,
                            ),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 30.0,
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
