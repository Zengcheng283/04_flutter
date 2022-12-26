import 'package:flutter/material.dart';
import 'package:flutter_project/animatedMaterialPage.dart';
import 'package:flutter_project/animatedSwitchMaterialPage.dart';
import 'package:flutter_project/basicMaterialPage.dart';
import 'package:flutter_project/colorThemeMaterialPage.dart';
import 'package:flutter_project/containerMaterialPage.dart';
import 'package:flutter_project/infiniteListMaterialPage.dart';
import 'package:flutter_project/layoutMaterialPage.dart';
import 'package:flutter_project/routeBackMaterialPage.dart';
import 'package:flutter_project/scrollControllerMaterialPage.dart';
import 'package:flutter_project/singleChildScrollMaterialPage.dart';
import 'package:flutter_project/staggerAnimationMaterialPage.dart';

import 'fileIOMaterialPage.dart';
import 'gestureDetectorMaterialPage.dart';
import 'heroAnimatedMaterialPage.dart';
import 'httpRequestMaterialPage.dart';
import 'pointerEventMaterialPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            ListTile(
              leading: const Text("3"),
              title: const Text(
                "文本及样式",
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const BasicMaterialPage())));
              },
            ),
            ListTile(
              leading: const Text("4"),
              title: const Text(
                "布局类组件",
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const LayoutMaterialPage())));
              },
            ),
            ListTile(
              leading: const Text("5"),
              title: const Text(
                "容器类组件",
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const ContainerMaterialPage())));
              },
            ),
            ListTile(
              leading: const Text("6.2"),
              title: const Text(
                "SingleChildScroll",
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) =>
                            const SingleChildScrollMaterialPage())));
              },
            ),
            ListTile(
              leading: const Text("6.3"),
              title: const Text(
                "InfiniteListView",
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const InfiniteListView())));
              },
            ),
            ListTile(
              leading: const Text("6.4"),
              title: const Text(
                "滚动监听及控制",
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) =>
                            const ScrollControllerMaterialPage())));
              },
            ),
            ListTile(
              leading: const Text("7.1"),
              title: const Text(
                "导航返回拦截（WillPopScope）",
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const RouteBackMaterialPage())));
              },
            ),
            ListTile(
              leading: const Text("7.4"),
              title: const Text(
                "颜色和主题",
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const ThemeTestRoute())));
              },
            ),
            ListTile(
              leading: const Text("8.1"),
              title: const Text(
                "原始指针事件处理",
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) =>
                            const PointerEventMaterialPage())));
              },
            ),
            ListTile(
              leading: const Text("8.2"),
              title: const Text(
                "手势识别",
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) =>
                            const GestureDetectorMaterialPage())));
              },
            ),
            ListTile(
              leading: const Text("9.2"),
              title: const Text(
                "动画基本结构及状态监听",
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const AnimatedMaterialPage())));
              },
            ),
            ListTile(
              leading: const Text("9.4"),
              title: const Text(
                "Hero动画",
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) =>
                            const HeroAnimatedMaterialPage())));
              },
            ),
            ListTile(
              leading: const Text("9.5"),
              title: const Text(
                "交织动画",
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) =>
                            const StaggerAnimationMaterialPage())));
              },
            ),
            ListTile(
              leading: const Text("9.6"),
              title: const Text(
                "动画切换组件（AnimatedSwitcher）",
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) =>
                            const AnimatedSwitchMaterialPage())));
              },
            ),
            ListTile(
              leading: const Text("11.1"),
              title: const Text(
                "文件操作",
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const FileOperationRoute())));
              },
            ),
            ListTile(
              leading: const Text("11.2"),
              title: const Text(
                "通过HttpClient发起HTTP请求",
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const HttpTestRoute())));
              },
            ),
          ],
        ),
      ),
    );
  }
}
