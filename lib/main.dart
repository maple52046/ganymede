import 'package:flutter/material.dart';
import 'apollo.dart';

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

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: SafeArea(
        minimum: const EdgeInsets.all(20),
        child: Center(
          child: MyWidget(api: ApolloApi()),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  final ApolloApi api;
  const MyWidget({required this.api, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // intruction
        FutureBuilder<String>(
          future: api.introduction(),
          builder: (context, snapshot) => Text(snapshot.data ?? ''),
        ),
        const Divider(),
        // greeting
        FutureBuilder<String>(
          future: api.greeting('Bill'),
          builder: ((context, snapshot) => Text(snapshot.data ?? '')),
        ),
      ],
    );
  }
}
