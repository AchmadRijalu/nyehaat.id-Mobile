import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nyehaat_id/View/Akun_Page.dart';
import 'package:nyehaat_id/View/Keranjang_Page.dart';
import 'package:nyehaat_id/View/Menu_Page.dart';

class HomePage extends StatefulWidget {
  static final routeNames = "Home Page";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _bottomNavindex = 0;

  List<BottomNavigationBarItem> _bottomNavBarItems = [
    BottomNavigationBarItem(
        icon: Icon(
          Icons.flatware_outlined,
        ),
        label: MainMenuPage.pageName),
    BottomNavigationBarItem(
        icon: Icon(Icons.shopping_bag), label: KeranjangPage.pageName),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: AkunPage.pageName),
  ];
  List<Widget> _listPageWidget = [MainMenuPage(), KeranjangPage(), AkunPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _listPageWidget[_bottomNavindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomNavindex,
        items: _bottomNavBarItems,
        onTap: (selected) {
          setState(() {
            _bottomNavindex = selected;
          });
        },
      ),
    );
  }
}
