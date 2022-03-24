import 'package:flutter/material.dart';
import 'package:desktop_window/desktop_window.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

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

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    DesktopWindow.setMinWindowSize(const Size(600, 600));
  }
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // DesktopWindow.setMinWindowSize(Size(800,800));
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Flexible(
              flex: 10,
              child: Container(
                color: Colors.black54,
              ),
            ),
            Flexible(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children:  [
                  IconButton(icon: SizedBox.fromSize(size: const Size.fromRadius(200.0),child: const FittedBox(child: Icon(Icons.skip_previous_outlined))),
                  onPressed: (){},iconSize: 50.0),
                  IconButton(icon: SizedBox.fromSize(size: const Size.fromRadius(200.0),child: const FittedBox(child: Icon(Icons.play_arrow_outlined))),
                  onPressed: (){},iconSize: 50.0),
                  IconButton(icon: SizedBox.fromSize(size: const Size.fromRadius(200.0),child: const FittedBox(child: Icon(Icons.skip_next_outlined))),
                  onPressed: (){},iconSize: 50.0),
                ],
              ),
            ),
          ],
        ),
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
