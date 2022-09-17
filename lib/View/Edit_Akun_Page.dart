import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gender_picker/gender_picker.dart';
import 'package:nyehaat_id/provider/Gender_Provider.dart';
import 'package:provider/provider.dart';

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
            padding: const EdgeInsets.all(20),
            child: ChangeNotifierProvider<GenderPicker>(
              create: ((context) => GenderPicker()),
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
                                            .copyWith(
                                                fontWeight: FontWeight.w300),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Column(
                                    children: [
                                      FittedBox(
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          child: Image.asset(
                                            "assets/images/jal2.jpg",
                                            fit: BoxFit.fill,
                                            width: 60,
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        child: Container(
                                          margin:
                                              const EdgeInsets.only(top: 12),
                                          child: Text(
                                            "Ubah Foto Profil",
                                            style: Theme.of(context)!
                                                .textTheme
                                                .subtitle2!
                                                .copyWith(
                                                    color: primaryColor,
                                                    fontWeight:
                                                        FontWeight.w800),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 14,
                                      ),
                                      Container(
                                        child: Column(children: [
                                          Row(
                                            children: [
                                              Text(
                                                "Nama",
                                                style: Theme.of(context)!
                                                    .textTheme
                                                    .subtitle2!
                                                    .copyWith(
                                                        fontWeight:
                                                            FontWeight.w300),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 12,
                                          ),
                                          TextFormField(
                                            style: Theme.of(context)!
                                                .textTheme
                                                .subtitle2,
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
                                          )
                                        ]),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Container(
                                          child: Row(
                                        // mainAxisAlignment:
                                        //     MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                              child: Text(
                                            "Jenis Kelamin",
                                            style: Theme.of(context)!
                                                .textTheme
                                                .subtitle2!
                                                .copyWith(
                                                    fontWeight:
                                                        FontWeight.w300),
                                          )),
                                          Expanded(
                                              child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Consumer<GenderPicker>(
                                                builder:
                                                    (context, GenderPicker, _) {
                                                  return GestureDetector(
                                                    onTap: () {
                                                      GenderPicker.isMale =
                                                          true;
                                                    },
                                                    child: Container(
                                                      width: 40,
                                                      height: 40,
                                                      decoration: BoxDecoration(
                                                        color: GenderPicker
                                                                    .isMale ==
                                                                true
                                                            ? primaryColor
                                                            : Colors.white,
                                                        border: Border.all(
                                                          color: Colors.white,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(50),
                                                      ),
                                                      child: Icon(
                                                        Icons.male,
                                                        color: GenderPicker
                                                                    .isMale ==
                                                                true
                                                            ? Colors.white
                                                            : Colors.grey,
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ),
                                              SizedBox(
                                                width: 26,
                                              ),
                                              Consumer<GenderPicker>(
                                                builder:
                                                    (context, GenderPicker, _) {
                                                  return GestureDetector(
                                                    onTap: () {
                                                      GenderPicker.isMale =
                                                          false;
                                                    },
                                                    child: Container(
                                                      width: 40,
                                                      height: 40,
                                                      decoration: BoxDecoration(
                                                        color: GenderPicker
                                                                    .isMale ==
                                                                false
                                                            ? primaryColor
                                                            : Colors.white,
                                                        border: Border.all(
                                                            color:
                                                                Colors.white),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(50),
                                                      ),
                                                      child: Icon(
                                                        Icons.female,
                                                        color: GenderPicker
                                                                    .isMale ==
                                                                false
                                                            ? Colors.white
                                                            : Colors.grey,
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ),
                                            ],
                                          ))
                                        ],
                                      )),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Container(
                                        child: Column(children: [
                                          Row(
                                            children: [
                                              Text(
                                                "Umur",
                                                style: Theme.of(context)!
                                                    .textTheme
                                                    .subtitle2!
                                                    .copyWith(
                                                        fontWeight:
                                                            FontWeight.w300),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 12,
                                          ),
                                          TextFormField(
                                            keyboardType: TextInputType.number,
                                            style: Theme.of(context)!
                                                .textTheme
                                                .subtitle2,
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
                                          )
                                        ]),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Container(
                                        child: Column(children: [
                                          Row(
                                            children: [
                                              Text(
                                                "Alamat",
                                                style: Theme.of(context)!
                                                    .textTheme
                                                    .subtitle2!
                                                    .copyWith(
                                                        fontWeight:
                                                            FontWeight.w300),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 12,
                                          ),
                                          TextFormField(
                                            style: Theme.of(context)!
                                                .textTheme
                                                .subtitle2,
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
                                          )
                                        ]),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Container(
                                        child: Column(children: [
                                          Row(
                                            children: [
                                              Text(
                                                "Email",
                                                style: Theme.of(context)!
                                                    .textTheme
                                                    .subtitle2!
                                                    .copyWith(
                                                        fontWeight:
                                                            FontWeight.w300),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 12,
                                          ),
                                          TextFormField(
                                            style: Theme.of(context)!
                                                .textTheme
                                                .subtitle2,
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
                                          )
                                        ]),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Container(
                                        child: Column(children: [
                                          Row(
                                            children: [
                                              Text(
                                                "Nomor Telepon",
                                                style: Theme.of(context)!
                                                    .textTheme
                                                    .subtitle2!
                                                    .copyWith(
                                                        fontWeight:
                                                            FontWeight.w300),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 12,
                                          ),
                                          TextFormField(
                                            keyboardType: TextInputType.number,
                                            style: Theme.of(context)!
                                                .textTheme
                                                .subtitle2,
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
                                          )
                                        ]),
                                      ),
                                    ],
                                  )
                                ],
                              )),
                        ]),
                  )
                ],
              )),
            )),
      )),
    );
  }
}
