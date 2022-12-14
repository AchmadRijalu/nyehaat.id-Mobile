import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nyehaat_id/View/Home.dart';
import 'package:nyehaat_id/View/Register_Page.dart';
import 'package:nyehaat_id/common/styles.dart';

class LoginPage extends StatefulWidget {
  static const routeNames = "Login Page";
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controller = TextEditingController();
  bool _passwordVisible = false;
  void initState() {
    super.initState();
    _passwordVisible = true;
    this.controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(elevation: 0, backgroundColor: Colors.transparent),
        body: SafeArea(
            child: Expanded(
          child: Padding(
              padding: const EdgeInsets.all(21),
              child: SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),
                child: Container(
                    // color: Colors.amber,
                    // padding: const EdgeInsets.only(top: 20),
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Login ke",
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
                          "Nyehaat.id",
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
                              "Masuk ke dalam akun yang telah anda daftarkan",
                              style: Theme.of(context)!
                                  .textTheme
                                  .subtitle2!
                                  .copyWith(
                                      color:
                                          Color(0xff171930).withOpacity(0.5)),
                            ),
                            Text(
                              "sebelumnya di Nyehaat.id",
                              style: Theme.of(context)!
                                  .textTheme
                                  .subtitle2!
                                  .copyWith(
                                      color:
                                          Color(0xff171930).withOpacity(0.5)),
                            )
                          ]),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Container(
                      // color: Colors.amber,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin:
                                  const EdgeInsets.only(left: 10, bottom: 7),
                              child: Text(
                                "Email",
                                style: Theme.of(context)!
                                    .textTheme
                                    .subtitle2!
                                    .copyWith(
                                        color:
                                            Color(0xff171930).withOpacity(0.5)),
                              ),
                            ),
                            TextFormField(
                              style: Theme.of(context)!.textTheme.subtitle2,
                              autofocus: false,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  borderSide: BorderSide.none,
                                ),
                                filled: true,
                                fillColor: Colors.grey[110],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.only(left: 10, bottom: 7),
                              child: Text(
                                "Password",
                                style: Theme.of(context)!
                                    .textTheme
                                    .subtitle2!
                                    .copyWith(
                                        color:
                                            Color(0xff171930).withOpacity(0.5)),
                              ),
                            ),
                            TextFormField(
                              obscureText: _passwordVisible,
                              autofocus: false,
                              controller: controller,
                              style: Theme.of(context)!.textTheme.subtitle2,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                    borderSide: BorderSide.none,
                                  ),
                                  filled: true,
                                  fillColor: Colors.grey[110],
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      _passwordVisible
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: Colors.black,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _passwordVisible = !_passwordVisible;
                                      });
                                    },
                                  )),
                            ),
                          ]),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                                flex: 2,
                                child: Divider(
                                  height: 2,
                                  thickness: 0.5,
                                  color: Colors.black,
                                )),
                            Expanded(
                                child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "atau",
                                style: Theme.of(context).textTheme.subtitle2,
                              ),
                            )),
                            Expanded(
                                flex: 2,
                                child: Divider(
                                  height: 2,
                                  thickness: 0.5,
                                  color: Colors.black,
                                )),
                          ]),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding: const EdgeInsets.all(9),
                      height: 46,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/loginGooglePNG.png")
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 0.1,
                                blurRadius: 0.1,
                                offset: Offset(0, 0.8))
                          ]),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Lupa password?",
                          style: Theme.of(context)!
                              .textTheme
                              .subtitle2!
                              .copyWith(
                                  color: Color(0xff171930).withOpacity(0.5),
                                  decoration: TextDecoration.underline),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    GestureDetector(
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        height: 54.08,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Login",
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
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            HomePage.routeNames, (route) => false);
                      },
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Belum mempunyai akun? ",
                          style: Theme.of(context)!
                              .textTheme
                              .subtitle2!
                              .copyWith(
                                  color: Color(0xff171930).withOpacity(0.5)),
                        ),
                        InkWell(
                          onTap: () => Navigator.push(context,
                              MaterialPageRoute(builder: ((context) {
                            return RegisterPage();
                          }))),
                          child: Container(
                            child: Text(
                              "Daftar di sini",
                              style: Theme.of(context)!
                                  .textTheme
                                  .subtitle2!
                                  .copyWith(
                                      color: Color(0xff171930).withOpacity(0.5),
                                      decoration: TextDecoration.underline),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                )),
              )),
        )));
  }
}
