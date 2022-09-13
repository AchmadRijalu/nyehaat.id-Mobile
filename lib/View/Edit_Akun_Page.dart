import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class EditAkunPage extends StatefulWidget {
  static const routeNames = "Edit Akun";
  const EditAkunPage({Key? key}) : super(key: key);

  @override
  State<EditAkunPage> createState() => _EditAkunPageState();
}

class _EditAkunPageState extends State<EditAkunPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Container(
              child: Column(
            children: [
              Container(
                child: Column(children: [Text("Profil Penyakit")]),
              )
            ],
          )),
        ),
      )),
    );
  }
}
