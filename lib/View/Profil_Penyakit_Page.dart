import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nyehaat_id/View/Login_Page.dart';
import 'package:nyehaat_id/common/styles.dart';

class ProfilPenyakitPage extends StatefulWidget {
  static const routeNames = "Profil Penyakit";
  const ProfilPenyakitPage({Key? key}) : super(key: key);

  @override
  State<ProfilPenyakitPage> createState() => _ProfilPenyakitPageState();
}

class _ProfilPenyakitPageState extends State<ProfilPenyakitPage> {
  bool isCheckedDiabetes = false;
  bool isCheckedPenyakitJantung = false;
  bool isCheckedDarahTinggi = false;
  bool isCheckedAsamUrat = false;
  bool isCheckedKolestrol = false;
  bool isCheckedAnemia = false;

  @override
  void initstate() {
    super.initState();
    this.isCheckedDiabetes;
    this.isCheckedPenyakitJantung;
    this.isCheckedDarahTinggi;
    this.isCheckedAsamUrat;
    this.isCheckedKolestrol;
    this.isCheckedAnemia;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: primaryColor),
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(21),
          child: Container(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Text(
                    "Profil Penyakit",
                    style: Theme.of(context)!
                        .textTheme
                        .headline5!
                        .copyWith(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    "Anda",
                    style: Theme.of(context)!
                        .textTheme
                        .headline5!
                        .copyWith(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                // color: Colors.yellow,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Centang penyakit yang anda miliki",
                        style: Theme.of(context)!.textTheme.subtitle2!.copyWith(
                            color: Color(0xff171930).withOpacity(0.5)),
                      ),
                    ]),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                // color: Colors.blue,
                child: Column(children: [
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Diabetes",
                          style: Theme.of(context)!.textTheme.subtitle2,
                        ),
                        Checkbox(
                            value: isCheckedDiabetes,
                            onChanged: (bool? value) {
                              setState(() {
                                isCheckedDiabetes = !isCheckedDiabetes;
                              });
                            })
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Penyakit Jantung",
                          style: Theme.of(context)!.textTheme.subtitle2,
                        ),
                        Checkbox(
                            value: isCheckedPenyakitJantung,
                            onChanged: (bool? value) {
                              setState(() {
                                isCheckedPenyakitJantung =
                                    !isCheckedPenyakitJantung;
                              });
                            })
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Darah Tinggi",
                          style: Theme.of(context)!.textTheme.subtitle2,
                        ),
                        Checkbox(
                            value: isCheckedDarahTinggi,
                            onChanged: (bool? value) {
                              setState(() {
                                isCheckedDarahTinggi = !isCheckedDarahTinggi;
                              });
                            })
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Asam Urat",
                          style: Theme.of(context)!.textTheme.subtitle2,
                        ),
                        Checkbox(
                            value: isCheckedAsamUrat,
                            onChanged: (bool? value) {
                              setState(() {
                                isCheckedAsamUrat = !isCheckedAsamUrat;
                              });
                            })
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Kolestrol",
                          style: Theme.of(context)!.textTheme.subtitle2,
                        ),
                        Checkbox(
                            value: isCheckedKolestrol,
                            onChanged: (bool? value) {
                              setState(() {
                                isCheckedKolestrol = !isCheckedKolestrol;
                              });
                            })
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Anemia",
                          style: Theme.of(context)!.textTheme.subtitle2,
                        ),
                        Checkbox(
                            value: isCheckedAnemia,
                            onChanged: (bool? value) {
                              setState(() {
                                isCheckedAnemia = !isCheckedAnemia;
                              });
                            })
                      ],
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      margin: const EdgeInsets.only(top: 120),
                      padding: const EdgeInsets.all(5),
                      height: 54.08,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("buat Akun",
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2!
                                  .copyWith(color: Colors.white))
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 0.1,
                                blurRadius: 0.1,
                                offset: Offset(0, 0.8))
                          ]),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) {
                        return LoginPage();
                      })));
                    },
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  Container(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Sudah mempunyai akun? ",
                            style: Theme.of(context)!
                                .textTheme
                                .subtitle2!
                                .copyWith(
                                  color: Color(0xff171930).withOpacity(0.5),
                                ),
                          ),
                          GestureDetector(
                            child: Text("Login disini",
                                style: Theme.of(context)!
                                    .textTheme
                                    .subtitle2!
                                    .copyWith(
                                        color:
                                            Color(0xff171930).withOpacity(0.5),
                                        decoration: TextDecoration.underline)),
                            onTap: (() {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()),
                                (Route<dynamic> route) => false,
                              );
                            }),
                          )
                        ]),
                  )
                ]),
              ),
            ],
          )),
        ),
      )),
    );
  }
}
