import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nyehaat_id/Widgets/Card_Pesanan.dart';

import '../common/styles.dart';

class KeranjangPage extends StatefulWidget {
  static final String pageName = "Pesanan";

  const KeranjangPage({Key? key}) : super(key: key);

  @override
  State<KeranjangPage> createState() => _KeranjangPageState();
}

class _KeranjangPageState extends State<KeranjangPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Pesanan",
          style: Theme.of(context)!
              .textTheme
              .headline6!
              .copyWith(fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Container(
              // color: Colors.amber,
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CardPesanan(),
              SizedBox(
                height: 16,
              ),
              CardPesanan(),
              SizedBox(
                height: 16,
              ),
              CardPesanan(),
              SizedBox(
                height: 16,
              ),
              CardPesanan()
            ],
          )),
        ),
      )),
    );
  }
}
