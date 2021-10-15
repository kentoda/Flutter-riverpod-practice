import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


// StateProviderを使い受け渡すデータを定義
final countProvider = StateProvider((ref) {
  return 0;
});

void main() {
  runApp(
    ProviderScope(
      child: MaterialApp(
        title: 'riverpod practice',
        home: MyWidget(),
      ),
    ),
  );
}

// ConsumerWidgetを使うとbuild()からデータを受け取る 
class MyWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    // watch()を使いデータを受け取る
    final count = watch(countProvider).state;

    return Scaffold(
      body: Center(
        child: Text('count is $count'),
      ),
    );
  }
}
