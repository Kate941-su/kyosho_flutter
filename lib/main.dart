import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'effect_kind/effect_kind_page.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends HookConsumerWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.black12,
          leading: IconButton(
            icon: Icon(Icons.settings),
            onPressed: (){},
          ),
          title: Text(
            '巨匠',
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
        ),
        body: Center(
          child: EffectKindPage(),
        ),
      ),
    );
  }
}
