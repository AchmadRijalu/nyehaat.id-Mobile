import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nyehaat_id/Widgets/Card_Details_Pesanan.dart';
import 'package:nyehaat_id/common/styles.dart';
import 'package:flutter_svg/svg.dart';

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
          child: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                  // color: Colors.amber,
                  child: Column(
                children: [
                  //looping the card pesanan list here
                  CardDetailsPesanan(),
                  SizedBox(
                    height: 20,
                  ),
                  CardDetailsPesanan(),
                  SizedBox(
                    height: 20,
                  ),
                  CardDetailsPesanan(),
                  SizedBox(
                    height: 20,
                  ),
                  CardDetailsPesanan(),
                  SizedBox(
                    height: 20,
                  ),
                  CardDetailsPesanan(),
                  SizedBox(
                    height: 20,
                  ),
                ],
              )),
            ),
          ),
          DraggableDetails(context)
        ],
      )),
    );
  }

  Widget DraggableDetails(BuildContext context) {
    return DraggableScrollableSheet(
        initialChildSize: 0.2,
        maxChildSize: 0.3,
        minChildSize: 0.1,
        builder: ((context, scrollController) {
          return SingleChildScrollView(
            // physics: BouncingScrollPhysics(),
            controller: scrollController,
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24)),
                color: Colors.white,
              ),
              height: 257,
              child: Column(children: [
                Container(
                  child: Row(
                    children: [
                      Text(
                        "Delivery Location",
                        style: Theme.of(context)!
                            .textTheme
                            .subtitle2!
                            .copyWith(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Row(children: [
                            Expanded(
                                child: Container(
                              alignment: Alignment.topLeft,
                              child: Icon(Icons.location_on_rounded),
                            )),
                            Expanded(
                                flex: 6,
                                child: Container(
                                  child: Text(
                                    "Jl Babatan Tengah Gg III , Kec Wiyung Kota Surabaya 60231",
                                    style: Theme.of(context)!
                                        .textTheme
                                        .subtitle2!
                                        .copyWith(fontWeight: FontWeight.bold),
                                  ),
                                )),
                          ]),
                        ),
                        Icon(Icons.keyboard_arrow_right_outlined),

                        // Expanded(
                        //     child: Container(
                        //   alignment: Alignment.center,
                        //   child:
                        // Icon(Icons.keyboard_arrow_right_outlined),
                        // ))
                      ]),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Row(children: [
                    Text(
                      "Payment Method",
                      style: Theme.of(context)!
                          .textTheme
                          .subtitle2!
                          .copyWith(fontWeight: FontWeight.w700),
                    )
                  ]),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(children: [
                            SvgPicture.asset(
                              "assets/images/OVO.svg",
                              width: 30,
                              height: 30,
                              allowDrawingOutsideViewBox: true,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "081231149830",
                              style: Theme.of(context)!
                                  .textTheme
                                  .subtitle2!
                                  .copyWith(fontWeight: FontWeight.bold),
                            )
                          ]),
                        ),
                        Container(
                          child: Icon(Icons.keyboard_arrow_right_outlined),
                        )
                      ]),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(children: [
                    Text(
                      "Total",
                      style: Theme.of(context)!
                          .textTheme
                          .subtitle1!
                          .copyWith(fontWeight: FontWeight.bold),
                    )
                  ]),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Row(children: [
                    Text(
                      "Rp.",
                      style: Theme.of(context)!
                          .textTheme
                          .subtitle2!
                          .copyWith(fontSize: 16),
                    ),
                    Text(
                      "245.367",
                      style: Theme.of(context)!.textTheme.headline4!.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    )
                  ]),
                )
              ]),
            ),
          );
        }));
  }
}
