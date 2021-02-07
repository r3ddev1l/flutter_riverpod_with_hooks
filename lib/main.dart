import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final helloWorldProvider = Provider((_) => 'Hello World');

void main() => runApp(
      ProviderScope(
        child: MyApp(),
      ),
    );

class MyApp extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final value = useProvider(helloWorldProvider);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Riverpod example"),
        ),
        body: Center(
          child: Text(value),
        ),
      ),
    );
  }
}
