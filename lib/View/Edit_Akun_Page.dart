import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../common/styles.dart';

class EditAkunPage extends StatefulWidget {
  static const routeNames = "Edit Akun";
  const EditAkunPage({Key? key}) : super(key: key);

  @override
  State<EditAkunPage> createState() => _EditAkunPageState();
}

class _EditAkunPageState extends State<EditAkunPage> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: primaryColor),
        actions: <Widget>[
          Padding(
              padding: const EdgeInsets.all(12),
              child: ElevatedButton(
                onPressed: (() {}),
                child: Text(
                  "Simpan",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(color: Colors.white),
                ),
              ))
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Akun Saya",
                        style: Theme.of(context)!
                            .textTheme
                            .headline5!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Container(
                          margin: const EdgeInsets.only(top: 12),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Foto",
                                    style: Theme.of(context)!
                                        .textTheme
                                        .subtitle2!
                                        .copyWith(fontWeight: FontWeight.w300),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.asset(
                                      "assets/images/jal2.jpg",
                                      fit: BoxFit.fill,
                                      width: 60,
                                    ),
                                  ),
                                  GestureDetector(
                                    child: Container(
                                      margin: const EdgeInsets.only(top: 12),
                                      child: Text(
                                        "Ubah Foto Profil",
                                        style: Theme.of(context)!
                                            .textTheme
                                            .subtitle2!
                                            .copyWith(
                                                color: primaryColor,
                                                fontWeight: FontWeight.w800),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 14,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Nama",
                                        style: Theme.of(context)!
                                            .textTheme
                                            .subtitle2!
                                            .copyWith(
                                                fontWeight: FontWeight.w300),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  TextFormField(
                                    style:
                                        Theme.of(context)!.textTheme.subtitle2,
                                    autofocus: false,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                        borderSide: BorderSide.none,
                                      ),
                                      filled: true,
                                      fillColor: Colors.grey[110],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )),
                    ]),
              )
            ],
          )),
        ),
      )),
    );
  }
}
