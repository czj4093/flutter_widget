import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      // 应用名称
      title: '基础WidgetDemo',
      theme: new ThemeData(
        // 蓝色主题
        primarySwatch: Colors.blue,
      ),
      //应用首页路由
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// 首页
class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(this.title),
      ),
      body: new Center(
        child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text("文本及样式"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) {
                    return new TextRoute();
                  }));
                },
              ),
              FlatButton(
                child: Text("按钮"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) {
                    return new ButtonRoute();
                  }));
                },
              ),
            ]),
      ),
    );
  }
}

// 创建一个新路由
class ButtonRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("按钮"),
      ),
      body: Center(
        child: Text("This is new route"),
      ),
    );
  }
}

class TextRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("文本及样式"),
      ),
      body: new Center(
        child: new ListView(
          //控制方向 默认是垂直的
//           scrollDirection: Axis.horizontal,

          children: <Widget>[
            Text(
              "Text",
              textScaleFactor: 1.5,
            ),
            Text(
              "Text用于显示简单样式文本，它包含一些控制文本显示样式的一些属性.",
              textAlign: TextAlign.left,
            ),
            Text("示例"),
            Text(
              "Hello world",
              textAlign: TextAlign.center,
            ),
            Text(
              "Hello world! I'm Jack. " * 4,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              "Hello world",
              textScaleFactor: 1.5,
            ),
            Text("textAlign：文本的对齐方式；可以选择左对齐、右对齐还是居中."),
            Text("maxLines指定文本显示的最大行数，默认情况下，文本是自动折行的，如果指定此参数，则文本最多不会超过指定的行."),
            Text("如果有多余的文本，可以通过overflow来指定截断方式，默认是直接截断"),
            Text(
                "textScaleFactor：代表文本相对于当前字体大小的缩放因子，相对于去设置文本的样式style属性的fontSize，它是调整字体大小的一个快捷方式"),
            Text(
              "TextStyle",
              textScaleFactor: 1.5,
            ),
            Text("TextStyle用于指定文本显示的样式如颜色、字体、粗细、背景等"),
            Text(
              "示例",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18.0,
                  height: 1.2,
                  fontFamily: "Courier",
                  background: new Paint()..color = Colors.yellow,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.dashed),
            ),
            Text("height：该属性用于指定行高，但它并不是一个绝对值，而是一个因子，具体的行高等于fontSize*height"),
            Text("fontFamily ：由于不同平台默认支持的字体集不同，所以在手动指定字体时一定要先在不同平台测试一下"),
            Text("fontSize：该属性和Text的textScaleFactor都用于控制字体大小。但是有两给主要区别："),
            Text("fontSize可以精确指定字体大小，而textScaleFactor只能通过缩放比例来控制"),
            Text(
                "textScaleFactor主要是用于系统字体大小设置改变时对Flutter应用字体进行全局调整，而fontSize通常用于单个文本"),
            Text(
              "TextSpan",
              textScaleFactor: 1.5,
            ),
            Text(
                "在上面的例子中，Text的所有文本内容只能按同一种样式，如果我们需要对一个Text内容的不同部分按照不同的样式显示，这时就可以使用TextSpan，它代表文本的一个“片段”"),
            Text(
                "style 和 text属性代表该文本片段的样式和内容。 children是一个TextSpan的数组，也就是说TextSpan可以包括其他TextSpan。而recognizer用于对该文本片段上用于手势进行识别处理"),
            Text(
              "DefaultTextStyle",
              style: TextStyle(
                color: Colors.grey,
              ),
              textScaleFactor: 1.5,
            ),
            Text(
                "在widget树中，文本的样式默认是可以被继承的，因此，如果在widget树的某一个节点处设置一个默认的文本样式，那么该节点的子树中所有文本都会默认使用这个样式，而DefaultTextStyle正是用于设置默认文本样式的"),
            Text(
              "使用字体",
              textScaleFactor: 1.5,
            ),
            Text("可以在Flutter应用程序中使用不同的字体。例如，我们可能会使用设计人员创建的自定义字体，或者其它第三方的字体，如Google Fonts中的字体。本节将介绍如何为Flutter应用配置字体，并在渲染文本时使用它们。在Flutter中使用字体分两步完成。首先在pubspec.yaml中声明它们，以确保它们会打包到应用程序中。然后通过TextStyle属性使用字体"),
            Text("在Flutter中使用字体分两步完成。首先在pubspec.yaml中声明它们，以确保它们会打包到应用程序中。然后通过TextStyle属性使用字体"),
            Text("在asset中声明"),
            Text("要将字体打文件打包到应用中，和使用其它资源一样，要先在pubspec.yaml中声明它。然后将字体文件复制到在pubspec.yaml中指定的位置"),
          ],
        ),
      ),
    );
  }
}
