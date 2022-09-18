import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nyehaat_id/Widgets/Card_Details_Pesanan.dart';
import 'package:nyehaat_id/common/styles.dart';

class DetailsPesanan extends StatelessWidget {
  static const routeNames = "Keterangan Pesanan";
  const DetailsPesanan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Keterangan Pesanan",
          style: Theme.of(context)!
              .textTheme
              .titleLarge!
              .copyWith(color: Colors.black, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: primaryColor),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
              child: Column(
            children: [
              //looping the card pesanan list here
              CardDetailsPesanan(),
              SizedBox(
                height: 24,
              ),
              CardDetailsPesanan(),
              SizedBox(
                height: 24,
              ),
              CardDetailsPesanan(),
              SizedBox(
                height: 24,
              ),
              CardDetailsPesanan(),
              SizedBox(
                height: 24,
              ),
            ],
          )),
        ),
      )),
    );
  }
}
