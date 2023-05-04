import 'package:flutter/material.dart';
import 'package:ogrenci_app/style.dart';
import 'package:ogrenci_app/theme/theme_mode_manager.dart';
import 'package:thememode_selector/thememode_selector.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isNotification = false;
  bool isvoice = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text('Ayarlar', style: TextStyle(color: Colors.black),),
      ),
      body: Container(
          child:Padding(
            padding: EdgeInsets.all(20.0),
             child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Bildirimler'),
                    Switch(value: isNotification,
                      onChanged: (value){
                        setState(() {
                          isNotification = value;
                        });
                      },
                      activeColor: Colors.black,
                    )
                  ]
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Ses'),
                    Switch(value: isvoice,
                      onChanged: (value) {
                        setState(() {
                          isvoice = value;
                        });
                      },
                      activeColor: Colors.black,
                    ),
                  ]
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 const Text('Tema Modu'),
                  ThemeModeSelector(
                    height: 25,
                    onChanged: (mode){
                      ThemeModeManager.of(context)?.themeMode = mode;
                    }

                  )
                ],
              )
            ],
          )
          )

      ),
    );
  }
}
