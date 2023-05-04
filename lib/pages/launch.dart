import 'package:flutter/material.dart';
import 'package:ogrenci_app/pages/login_page.dart';
import 'package:ogrenci_app/pages/register_page.dart';
import 'package:ogrenci_app/style.dart';

class LaunchPage extends StatelessWidget {
  const LaunchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Gezi Rehberim', style: TextStyle(color: Colors.black87), ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
          padding: const EdgeInsets.only(
              right: 20.0, left: 20.0, top: 50.0, bottom: 100.0),
       child:  SingleChildScrollView(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           children:  [
             ClipRRect(
               borderRadius: BorderRadius.circular(80),
               child: Image.asset(
                 'assets/home.jpeg',
                 height: size.height * .5,
                 width: size.width * 9,
               ),
             ),
             SizedBox(
               height: size.height *.05,
             ),



             Column(
               crossAxisAlignment: CrossAxisAlignment.stretch,
               mainAxisAlignment: MainAxisAlignment.end,
               children: [


                 ElevatedButton(
                     style: ElevatedButton.styleFrom(
                         primary:  Colors.white
                     ),
                     onPressed: () {
                       Text('Giriş yap butonu');
                       Navigator.push(
                           context,
                           MaterialPageRoute(
                               builder: (context) => LoginPage()));
                     },
                     child: const Text('Giriş Yap',style: TextStyle(color: Colors.black),)),
                 const SizedBox(
                   height: 20,
                 ),

                 ElevatedButton(
                     style: ElevatedButton.styleFrom(
                         primary: Colors.white
                     ),
                     onPressed: () {
                       const Text('Kayıt ol butonu');
                       Navigator.push(
                           context, MaterialPageRoute(
                           builder: (context)=> RegisterPage()));
                     },
                     child:const Text(
                       'Kayıt Ol',
                       style: TextStyle(color: Colors.black),))

               ],
             ),
           ],
         ),
       )



    )
    );

  }
}
