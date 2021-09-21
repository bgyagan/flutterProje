import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:world/ProfilSayfasi.dart';
import 'package:world/gonderikarti.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Projem',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0.0,
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.grey,
              size: 32.0,
            ),
            onPressed: () {}),
        title: Text(
          "Sosia Media",
          style: TextStyle(fontSize: 20.0, color: Colors.grey),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.pink[300],
                size: 32.0,
              ),
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Column(
                        children: <Widget>[
                          duyuru("kamil seni takip etti", "2 dk önce"),
                          duyuru("begüm gönderine yorum yaptı", "1 gün önce"),
                          duyuru("ceren mesaj gönderdi", "3 hafta önce"),
                        ],
                      );
                    });
              })
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 100.0,
            decoration: BoxDecoration(color: Colors.grey[100], boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 3.0),
                  blurRadius: 5.0),
            ]),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                ProfilKartiOlustur(
                    "Eda",
                    "https://cdn.pixabay.com/photo/2017/04/05/10/45/girl-2204622_960_720.jpg",
                    "Eda Saygın",
                    "https://cdn.pixabay.com/photo/2012/08/06/00/53/bridge-53769__340.jpg"),
                ProfilKartiOlustur(
                    "Mert",
                    "https://cdn.pixabay.com/photo/2016/03/09/15/10/man-1246508__340.jpg",
                    "Mert Usta",
                    "https://cdn.pixabay.com/photo/2013/11/28/10/03/river-219972__340.jpg"),
                ProfilKartiOlustur(
                    "Gökhan",
                    "https://cdn.pixabay.com/photo/2014/04/12/14/59/portrait-322470__340.jpg",
                    "Gökhan Taş",
                    "https://cdn.pixabay.com/photo/2014/08/15/11/29/beach-418742__340.jpg"),
                ProfilKartiOlustur(
                    "Ayşe",
                    "https://cdn.pixabay.com/photo/2015/09/02/12/58/woman-918788__340.jpg",
                    "Ayşe Gönül",
                    "https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832__340.jpg"),
                ProfilKartiOlustur(
                    "Ahmet",
                    "https://cdn.pixabay.com/photo/2017/01/03/01/38/man-1948310__340.jpg",
                    "Ahmet Fırat",
                    "https://cdn.pixabay.com/photo/2016/11/06/05/36/lake-1802337__340.jpg"),
                ProfilKartiOlustur(
                    "Burak",
                    "https://cdn.pixabay.com/photo/2018/03/13/15/01/male-3222718__340.jpg",
                    "Burak Uğuz",
                    "https://cdn.pixabay.com/photo/2018/10/19/12/14/train-3758523__340.jpg"),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          GonderiKarti(
            isimSoyad: "Uğur Kalın",
            gecenSure: "1 sene önce",
            aciklama: "Tbt",
            profilResimLinki:
                "https://cdn.pixabay.com/photo/2017/03/14/07/35/woman-2142184__340.jpg",
            gonderiResimLinki:
                "https://cdn.pixabay.com/photo/2017/09/25/13/12/cocker-spaniel-2785074__340.jpg",
          ),
          GonderiKarti(
            isimSoyad: "Gamze Saygın",
            gecenSure: "3 ay önce",
            aciklama: "Manzara",
            profilResimLinki:
                "https://cdn.pixabay.com/photo/2015/03/26/09/42/woman-690118__340.jpg",
            gonderiResimLinki:
                "https://cdn.pixabay.com/photo/2016/08/11/23/48/mountains-1587287__340.jpg",
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        backgroundColor: Colors.pink[300],
        child: Icon(
          Icons.add_a_photo,
          color: Colors.white,
        ),
      ),
    );
  }

  Padding duyuru(String mesaj, String gecenSure) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            gecenSure,
            style: TextStyle(fontSize: 15.0),
          ),
          Text(gecenSure)
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget ProfilKartiOlustur(String kullaniciAdi, String resimLinki,
      String isimSoyad, String kapakResimlinki) {
    return Material(
      child: InkWell(
        onTap: () async {
          bool donenVeri = await Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => ProfilSayfasi(
                    profilResimlinki: resimLinki,
                    kullaniciAdi: kullaniciAdi,
                    isimSoyad: isimSoyad,
                    kapakResimlinki: kapakResimlinki,
                  )));
          if (donenVeri) {
            print("Kullanı profil sayfasından dündü");
          }
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Column(
            children: <Widget>[
              Stack(
                alignment: Alignment.topRight,
                children: <Widget>[
                  Hero(
                    tag: kullaniciAdi,
                    child: Container(
                      width: 70.0,
                      height: 70.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 2.0, color: Colors.grey),
                          borderRadius: BorderRadius.circular(35.0),
                          image: DecorationImage(
                              image: NetworkImage(resimLinki),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  Container(
                    width: 20.0,
                    height: 20.0,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(25.0),
                        border: Border.all(width: 2.0, color: Colors.white)),
                  )
                ],
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                kullaniciAdi,
                style: TextStyle(fontSize: 15.0, color: Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}
