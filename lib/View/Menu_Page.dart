import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainMenuPage extends StatefulWidget {
  static final String pageName = "Menu";
  const MainMenuPage({Key? key}) : super(key: key);

  @override
  State<MainMenuPage> createState() => _MainMenuPageState();
}

class _MainMenuPageState extends State<MainMenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(children: [
            Container(
              child: Row(children: [
                Text(
                  "Makan apa hari ini?",
                  style: Theme.of(context).textTheme.headline5,
                )
              ]),
            )
          ]),
        ),
      )),
    );
  }
}
