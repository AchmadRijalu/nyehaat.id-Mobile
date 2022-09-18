import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nyehaat_id/View/Edit_Akun_Page.dart';
import 'package:nyehaat_id/View/Login_Page.dart';
import 'package:nyehaat_id/common/styles.dart';

class AkunPage extends StatefulWidget {
  static final String pageName = "Akun";
  const AkunPage({Key? key}) : super(key: key);

  @override
  State<AkunPage> createState() => _AkunPageState();
}

class _AkunPageState extends State<AkunPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(child: Akun_PageBuild(context)),
    ));
  }
}

Widget Akun_PageBuild(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(16),
    child: Container(
        child: Column(
      children: [
        ListTile(
          leading: Container(
            width: 50,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                "assets/images/jal2.jpg",
                fit: BoxFit.fill,
              ),
            ),
          ),
          title: Text(
            "Achmad Rijalu",
            style: Theme.of(context)!
                .textTheme
                .subtitle1!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            "081231149830",
            style: Theme.of(context)!
                .textTheme
                .subtitle2!
                .copyWith(color: Colors.grey),
          ),
          trailing: GestureDetector(
            child: Text(
              "Edit Profil",
              style: Theme.of(context)!
                  .textTheme
                  .subtitle2!
                  .copyWith(color: primaryColor, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.pushNamed(context, EditAkunPage.routeNames);
            },
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
            padding: const EdgeInsets.all(11),
            child: Column(
              children: [
                //Box Atas
                Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade200,
                              spreadRadius: 0.1,
                              blurRadius: 14,
                              offset: Offset(0, 0.2))
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(12),
                              child: Row(children: [
                                Icon(
                                  Icons.view_list,
                                  color: primaryColor,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Pesanan",
                                  style: Theme.of(context)!
                                      .textTheme
                                      .subtitle2!
                                      .copyWith(fontSize: 14),
                                ),
                              ]),
                            ),
                            Icon(
                              Icons.keyboard_arrow_right,
                              color: primaryColor,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(12),
                              child: Row(children: [
                                Icon(
                                  Icons.notifications,
                                  color: primaryColor,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Notifikasi",
                                  style: Theme.of(context)!
                                      .textTheme
                                      .subtitle2!
                                      .copyWith(fontSize: 14),
                                ),
                              ]),
                            ),
                            Icon(
                              Icons.keyboard_arrow_right,
                              color: primaryColor,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(12),
                              child: Row(children: [
                                Icon(
                                  Icons.credit_card,
                                  color: primaryColor,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Metode Pembayaran",
                                  style: Theme.of(context)!
                                      .textTheme
                                      .subtitle2!
                                      .copyWith(fontSize: 14),
                                ),
                              ]),
                            ),
                            Icon(
                              Icons.keyboard_arrow_right,
                              color: primaryColor,
                            )
                          ],
                        )
                      ],
                    )),
                SizedBox(
                  height: 20,
                ),
                //BOX Bawah
                Container(
                    padding: const EdgeInsets.all(11),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade200,
                              spreadRadius: 0.1,
                              blurRadius: 14,
                              offset: Offset(0, 0.2))
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(12),
                              child: Row(children: [
                                Icon(
                                  Icons.thumb_up_alt_outlined,
                                  color: primaryColor,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Beri nilai Nyehaat.id",
                                  style: Theme.of(context)!
                                      .textTheme
                                      .subtitle2!
                                      .copyWith(fontSize: 14),
                                ),
                              ]),
                            ),
                            Icon(
                              Icons.keyboard_arrow_right,
                              color: primaryColor,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(12),
                              child: Row(children: [
                                Icon(
                                  Icons.share,
                                  color: primaryColor,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Bagikan Nyehaat.id",
                                  style: Theme.of(context)!
                                      .textTheme
                                      .subtitle2!
                                      .copyWith(fontSize: 14),
                                ),
                              ]),
                            ),
                            Icon(
                              Icons.keyboard_arrow_right,
                              color: primaryColor,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(12),
                              child: Row(children: [
                                Icon(
                                  Icons.shield_outlined,
                                  color: primaryColor,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Kebijakan Privasi",
                                  style: Theme.of(context)!
                                      .textTheme
                                      .subtitle2!
                                      .copyWith(fontSize: 14),
                                ),
                              ]),
                            ),
                            Icon(
                              Icons.keyboard_arrow_right,
                              color: primaryColor,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(12),
                              child: Row(children: [
                                Icon(
                                  Icons.help_outline,
                                  color: primaryColor,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Bantuan",
                                  style: Theme.of(context)!
                                      .textTheme
                                      .subtitle2!
                                      .copyWith(fontSize: 14),
                                ),
                              ]),
                            ),
                            Icon(
                              Icons.keyboard_arrow_right,
                              color: primaryColor,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(12),
                              child: Row(children: [
                                Icon(
                                  Icons.group_sharp,
                                  color: primaryColor,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Tentang Kami",
                                  style: Theme.of(context)!
                                      .textTheme
                                      .subtitle2!
                                      .copyWith(fontSize: 14),
                                ),
                              ]),
                            ),
                            Icon(
                              Icons.keyboard_arrow_right,
                              color: primaryColor,
                            )
                          ],
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.pushNamedAndRemoveUntil(context,
                                  LoginPage.routeNames, (route) => false);
                            },
                            child: Container(
                              color: Colors.white,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(12),
                                    child: Row(children: [
                                      Icon(
                                        Icons.exit_to_app,
                                        color: primaryColor,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Keluar",
                                        style: Theme.of(context)!
                                            .textTheme
                                            .subtitle2!
                                            .copyWith(fontSize: 14),
                                      ),
                                    ]),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_right,
                                    color: primaryColor,
                                  )
                                ],
                              ),
                            ))
                      ],
                    )),
              ],
            ))
      ],
    )),
  );
}
