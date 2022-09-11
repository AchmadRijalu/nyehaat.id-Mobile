import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nyehaat_id/common/styles.dart';

class ProfilPenyakitPage extends StatefulWidget {
  const ProfilPenyakitPage({Key? key}) : super(key: key);

  @override
  State<ProfilPenyakitPage> createState() => _ProfilPenyakitPageState();
}

class _ProfilPenyakitPageState extends State<ProfilPenyakitPage> {
  @override
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
                height: 35,
              ),
              Container(
                child: Column(children: []),
              )
            ],
          )),
        ),
      )),
    );
  }
}
