import 'package:flutter/material.dart';
import 'package:ogrenci_app/pages/launch.dart';
import 'package:ogrenci_app/style.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController paswordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController paswordControllerAgain = TextEditingController();
  bool isVisible = true;
  //cinsiyet için
  bool woman = false;
  bool man = false;
  //DropDown
  late String  _chosenValue;
  int? _value ;

  var cities = ['Ankara','Antalya' ,'İstanbul', 'İzmir', ];

  @override
  Widget build(BuildContext context) {
    var size  = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: const Text(
          'Gezi Rehberim',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body:  Padding(
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
                          top: 20,
                          bottom: size.height *.06),
                      child: Column(
                        children: [

                          //SizedBox(
                            //height: size.height * .1,),
                          TextField(
                            controller: nameController,
                            cursorColor: Colors.black,
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                                prefixIcon: Icon(Icons.person, color: Colors.black,
                                ),
                                hintText: 'Kullanıcı Adı',
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
                         const  SizedBox(
                            height: 20,
                          ),
                          TextField(
                            controller: paswordControllerAgain,
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
                                hintText: 'Parola Tekrar',
                                enabledBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black)),
                                focusedBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black)
                                )),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child:
                              CheckboxListTile(
                                  title: Text('Kadın'),
                                  activeColor: Colors.black,
                                  value: woman,
                                  controlAffinity: ListTileControlAffinity.leading,
                                  onChanged: (newValue){
                                    setState(() {
                                      woman = newValue!;
                                    });
                                  }),),

                              Expanded(
                                  child:
                                  CheckboxListTile(
                                  title: Text('Erkek'),
                                  activeColor: Colors.black,
                                  value: man,
                                  controlAffinity: ListTileControlAffinity.leading,
                                  onChanged: (newValue){
                                    setState(() {
                                      man = newValue!;
                                    });

                                  }))
                            ],
                          ),
                          Center(
                            child:
                            Container(
                              child:   DropdownButton (
                                value: _value,
                                items: const [
                                 DropdownMenuItem(
                                    child: Text('Ankara'),
                                   value: 1,),
                                  DropdownMenuItem(
                                    child: Text('Antalya'),
                                  value: 2,),
                                  DropdownMenuItem(
                                    child: Text('İstanbul'),
                                  value: 3,),
                                  DropdownMenuItem(
                                    child: Text('İzmir'),
                                  )
                                ],
                                hint: Text('Yaşadığınız Şehir'),
                                onChanged: (value){
                                  setState(() {
                                    _value = value;
                                  });
                                },
                              ),
                            ),
                          )
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
                         builder: (context) => LaunchPage()));
                    }, child: Text('Kayıt Ol',
                  style: TextStyle(color: Colors.black),))

              ],
            ),
          )

      )
    );
  }
}
