import 'package:flutter/material.dart';
import 'package:ogrenci_app/pages/add_page.dart';
import 'package:ogrenci_app/pages/home_page.dart';
import 'package:ogrenci_app/pages/launch.dart';
import 'package:ogrenci_app/pages/login_page.dart';
import 'package:ogrenci_app/pages/profile_page.dart';
import 'package:ogrenci_app/pages/settings_page.dart';


class MenuPage extends StatefulWidget {
   MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {

   int _selectedIndex  = 0;

  void _onItemTapped (int  index){
    setState(() {
      _selectedIndex  = index;
      print('index $_selectedIndex');
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: const Text(
          'Gezi Rehberim',
          style: TextStyle(color: Colors.black),
        ),
      ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                  accountName:Text('Bahri',
                    style: TextStyle (
                        color: Colors.black87),
                  ),
                  accountEmail:Text('bahri@gmail.com',
                    style: TextStyle(
                        color: Colors.black),
                  ),
                currentAccountPicture:
                CircleAvatar(
                 // backgroundColor: Colors.amberAccent,
                  backgroundImage: AssetImage('assets/avatar-image.jpg'),
                ),
              ),
      ListTile(
        title: Text('Anasayfa'),
        leading: Icon(Icons.home),
        onTap: () => Navigator.pop(context),
      ),
              ListTile(
                title: Text('Ayarlar'),
                leading: Icon(Icons.settings),
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SettingsPage()
                    )),
              ),
              Divider(),
              ListTile(
                title: Text('Çıkış Yap'),
                leading: Icon(Icons.logout),
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LaunchPage ()
                    )),
              )

            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem> [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Anasayfa'),
            BottomNavigationBarItem(icon: Icon(Icons.add),label: 'Ekle'),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profil'),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor: Colors.black,
        ),
      body:
        _selectedIndex == 0 ? HomePage() :
        _selectedIndex == 1 ? AddPage() : ProfilePage()
    );
  }
}


