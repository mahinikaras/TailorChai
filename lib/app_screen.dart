import 'package:flutter/material.dart';
import 'package:tailor_chai_mobile_app/Constants/color_cons.dart';
import 'package:tailor_chai_mobile_app/Constants/string_const.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({Key? key}) : super(key: key);

  @override
  _AppScreenState createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _pages = <Widget>[
    Icon(
      Icons.home,
      size: 150,
    ),
    Icon(
      Icons.menu_book,
      size: 150,
    ),
    Icon(
      Icons.shopping_basket,
      size: 150,
    ),
    Icon(
      Icons.info,
      size: 150,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Center(
          child: Text(
            StringConst.appName,
            style: TextStyle(
              color: Colors.black,
              fontFamily: StringConst.fontFamilyDarling,
            ),
          ),
        ),
        backgroundColor: ColorConst.appTheme,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: ColorConst.appTheme,
        currentIndex: _selectedIndex, //New
        onTap: _onItemTapped,
        selectedIconTheme: IconThemeData(
          color: Colors.black,
        ),
        selectedItemColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: 'Blog',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'About',
          ),
        ],
      ),
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
