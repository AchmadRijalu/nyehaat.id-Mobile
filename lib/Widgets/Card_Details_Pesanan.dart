import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CardDetailsPesanan extends StatelessWidget {
  const CardDetailsPesanan({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade400,
                  spreadRadius: 0.1,
                  blurRadius: 5,
                  offset: Offset(0, 4))
            ]),
        height: 113,
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                // color: Colors.black,
                alignment: Alignment.center,
                child: ClipRRect(
                    child: Image.asset(
                  "assets/images/imagefood1.png",
                  height: 72,
                )),
              ),
            ),
            Expanded(
              child: Container(
                // color: Colors.orangeAccent,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 72,
                        // color: Colors.blue,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Salmon Rice",
                                        style: Theme.of(context)!
                                            .textTheme
                                            .subtitle2!
                                            .copyWith(
                                                fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Rp." + "32.257",
                                        style: Theme.of(context)!
                                            .textTheme
                                            .subtitle2!
                                            .copyWith(
                                                color: Color(0xff171930)
                                                    .withOpacity(0.5),
                                                fontWeight: FontWeight.w700),
                                      )
                                    ]),
                              ),
                              Text(
                                "X" + "1",
                                style: Theme.of(context)!
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(fontWeight: FontWeight.bold),
                              )
                            ]),
                      ),
                    ]),
              ),
            ),
            Expanded(
              child: Container(
                //price declare here
                child: Text("Rp. " + "32.257" + ",-",
                    style: Theme.of(context)!
                        .textTheme
                        .subtitle1!
                        .copyWith(fontWeight: FontWeight.w800)),
              ),
            ),
          ],
        ));
  }
}
