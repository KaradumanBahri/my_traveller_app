import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:ogrenci_app/style.dart';
import 'package:url_launcher/url_launcher.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);



  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: mainColor,
            height: size.height,
          ),
          Align(
            alignment: Alignment.bottomCenter,

          child: Container(

            decoration: const BoxDecoration(
                color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              )
            ),
            height: size.height *.67,
          )
          ),
          Padding(padding: EdgeInsets.only(top: size.height * .08),
            child: Align(
              alignment: Alignment.topCenter,
            child:
            CircleAvatar(
            radius: size.height * .06 ,
            backgroundImage: const AssetImage('assets/avatar-image.jpg'),
          ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: size.height * .2),
          child: const Align(
            alignment: Alignment.topCenter,
            child:
            SizedBox(
              child: AutoSizeText(
                'Bahri',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                maxLines: 2,
              ),
            ),
          ),
          ),Padding(padding: EdgeInsets.only(top: size.height * .25 ),
            child: Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  InkWell(
                    onTap: () {
                      print('maile Tıklandı');
                      customLaunch('mailto:bahri@gmail.com');
                    },
                    child:
                    Container(
                      decoration: BoxDecoration(
                          color: mainColor,
                          borderRadius: const BorderRadius.all(Radius.circular(10))),
                      child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child:  Icon(Icons.email)
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width * .1,
                  ),
                  InkWell(
                    onTap: () {
                      print('Telefona Tıklandı');
                      customLaunch('tel:05553334535');
                    },

                    child: Container(
                        decoration: BoxDecoration(
                            color: mainColor,
                            borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.phone),
                        )
                    ),
                  ),
                ],
              ),
            ),
          ),
         const SizedBox(
            height: 5,
          ),

          Expanded(
            child:
              ListView (
                children:  [
              Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                      padding: EdgeInsets.only(
                          top: size.height * .31,bottom: 5,left: 30,right: 40),
                      child:
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         const SizedBox(
                            child: AutoSizeText(
                              'Hakkımda',
                              style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold),
                              maxLines: 2,
                            ),
                          ),
                        const  SizedBox(
                            height: 10,
                          ),
                         const SizedBox(
                            child:AutoSizeText(
                              "Flutter'da ilk projemi gerçekleştiriyorum. Bu macerada sizleride bekliyorum",
                              style: TextStyle(fontSize: 15.0),
                              maxLines: 2,
                            ),
                          ),
                        const  SizedBox(
                            height: 10,
                          ),
                        const  SizedBox(
                            child: AutoSizeText(
                              'Planlanan Gezilerim',
                              style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold),
                              maxLines: 2,
                            ),
                          ),
                         const SizedBox(
                            height: 10,
                          ),

                          Container(
                            decoration: BoxDecoration(
                                color: mainColor,
                                borderRadius: const BorderRadius.all(Radius.circular(10))),
                            child:  Padding(
                                padding: EdgeInsets.all(8.0),
                                child:  Row(
                                  children: [
                                    Container(
                                      child: Padding(padding: EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            AutoSizeText(
                                              '27',
                                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                                            ),
                                            AutoSizeText(
                                              'Mayıs',
                                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                                            )
                                          ],
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.orange,
                                          borderRadius: BorderRadius.all(Radius.circular(10))),
                                    ),
                                    SizedBox(
                                      width: size.width * .03,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        AutoSizeText(
                                          "İsveç'e Gezi",
                                          maxLines: 2,
                                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),
                                        ),
                                        SizedBox(
                                          width: size.width * .6,
                                          child: AutoSizeText(
                                            "Stockholm'de Köfte yemeye gidiyoruz",
                                            maxLines: 2,
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: mainColor,
                                borderRadius: const BorderRadius.all(Radius.circular(10))),
                            child:  Padding(
                                padding: EdgeInsets.all(8.0),
                                child:  Row(
                                  children: [
                                    Container(
                                      child: Padding(padding: EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            AutoSizeText(
                                              '27',
                                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                                            ),
                                            AutoSizeText(
                                              'Mayıs',
                                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                                            )
                                          ],
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.orange,
                                          borderRadius: BorderRadius.all(Radius.circular(10))),
                                    ),
                                    SizedBox(
                                      width: size.width * .03,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        AutoSizeText(
                                          "İskoçya'ya Gezi",
                                          maxLines: 2,
                                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),
                                        ),
                                        SizedBox(
                                          width: size.width * .6,
                                          child:
                                          AutoSizeText(
                                            "Edinburgh kalesini görmeye gidiyoruz",
                                            maxLines: 2,
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: mainColor,
                                borderRadius: const BorderRadius.all(Radius.circular(10))),
                            child:  Padding(
                                padding: EdgeInsets.all(8.0),
                                child:  Row(
                                  children: [
                                    Container(
                                      child: Padding(padding: EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            AutoSizeText(
                                              '27',
                                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                                            ),
                                            AutoSizeText(
                                              'Mayıs',
                                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                                            )
                                          ],
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.orange,
                                          borderRadius: BorderRadius.all(Radius.circular(10))),
                                    ),
                                    SizedBox(
                                      width: size.width * .03,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        AutoSizeText(
                                          "İsveç'e Gezi",
                                          maxLines: 2,
                                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),
                                        ),
                                        SizedBox(
                                          width: size.width * .6,
                                          child:
                                          AutoSizeText(
                                            "Zürih'de çikolata yemeye gidiyoruz",
                                            maxLines: 2,
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                            ),
                          ),

                        ],
                      )
                  ),
              ),
                ],
              ),
          ),


            ],
          ),


      );

  }
  void customLaunch (command) async{

    if (await canLaunch(command)){
      await launch(command);
    }else {
      print('$command bulunamadı.');
    }
  }

}