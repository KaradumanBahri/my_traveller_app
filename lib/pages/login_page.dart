import 'dart:html';
import 'package:flutter/material.dart';
import 'package:ogrenci_app/pages/menu_page.dart';
import 'package:ogrenci_app/style.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController paswordController = TextEditingController();
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: mainColor  ,
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: const Text(
          'Gezi Rehberim',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView (
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                 decoration:  BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                     color: Colors.white,
                     // border: Border.all(),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.green.withOpacity(0.07),
                          blurRadius: 37,
                          offset: const Offset(0,3) )]
                    //color: Colors.orangeAccent,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        right: 20.0,left: 20.0,
                        //top: size.height *.4,
                        bottom: size.height *.06),
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.height * .2,),
                        const Text(
                            'En Güzel Gezi Rehberi Platformu',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 24,fontFamily: 'Lobster'),
                        ),
                        SizedBox(
                          height: size.height * .2,),
                         TextField(
                          controller: emailController,
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.mail, color: Colors.black,
                              ),
                              hintText: 'Kullanıcı Maili',
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)
                              )),

                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextField(
                          controller: paswordController,
                          obscureText: isVisible ? true : false,
                          cursorColor: Colors.black,
                          decoration:  InputDecoration(
                            suffixIcon: InkWell(
                               onTap: ( ) {
                               print('Göz Ikonu');
                               if (isVisible) {
                                 setState(() {
                                   isVisible = false;
                                 });
                                 print(isVisible);
                               }
                               else {
                                 setState(() {
                                   isVisible = false;
                                 });
                                 isVisible = true;
                                 print(isVisible);
                               }
                              },
                              child: isVisible ?  const Icon(
                                Icons.remove_red_eye_outlined,
                                color: Colors.black,
                              )
                                  : const Icon(
                                  Icons.remove_red_eye,
                                  color: Colors.black
                              ),
                            ),

                              prefixIcon: const Icon(
                              Icons.vpn_key, color: Colors.black,
                              ),
                              hintText: 'Parola',
                              enabledBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)),
                              focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)
                              )),
                        ),

                      ],
                    ),
                  )
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white),
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(
                        builder: (context) => MenuPage()));
                  }, child: const Text('Giriş Yap',
                style: TextStyle(color: Colors.black),))

            ],
          ),
        )

      )
    );
  }
}
