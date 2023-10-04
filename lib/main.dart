import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int androidCounter = 0;
  int iosCounter = 0;

  void _incrementCounter(String actionTriggered) {
    if (actionTriggered == 'ios') {
      setState(() {
        iosCounter++;
      });
    } else if (actionTriggered == 'android') {
      setState(() {
        androidCounter++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the android button this many times:',
              ),
              Text(
                '$androidCounter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const Text(
                'You have pushed the ios button this many times:',
              ),
              Text(
                '$iosCounter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
        floatingActionButton: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FloatingActionButton(
                  onPressed: () => _incrementCounter('android'),
                  tooltip: 'Increment',
                  child: const Icon(Icons.adb_sharp),
                ),
                FloatingActionButton(
                  onPressed: () => _incrementCounter('ios'),
                  tooltip: 'Increment',
                  child: const Icon(Icons.apple),
                ),
              ],
            )));
  }
}
