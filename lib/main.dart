import 'dart:html' as html;
import 'package:flutter/material.dart';

const String appTwoUrl =
String.fromEnvironment("APP_TWO_URL", defaultValue: "/app_two/");

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("App One")),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              html.window.location.href = "/app_two";
            },
            child: const Text("Go to App Two"),
          ),
        ),
      ),
    );
  }
}
