import 'package:flutter/material.dart';
import 'package:fmarket/urun_detay.dart';
import 'package:fmarket/urunler.dart';

class Kategori extends StatefulWidget {
  final String kategori;

  const Kategori({Key? key, required this.kategori}) : super(key: key);

  @override
  _KatagoriState createState() => _KatagoriState();
}

class _KatagoriState extends State<Kategori> {
  late List<Widget> gosterilecekListe;

  @override
  void initState() {
    super.initState();

    if (widget.kategori == "Temel Gıda") {
      gosterilecekListe = [
        UrunKarti(
          "Zeytin Yağı",
          "26.50 TL", 
          "https://cdn.pixabay.com/photo/2016/10/23/17/30/laurier-1763690__340.jpg",
          mevcut: true,
        ),
        UrunKarti(
          "Süt",
          "4.50 TL",
          "https://cdn.pixabay.com/photo/2016/12/17/20/52/milk-1914462__340.jpg",
        ),
        UrunKarti(
          "Et 1 Kg",
          "50 TL",
          "https://cdn.pixabay.com/photo/2015/11/07/11/00/meat-1030729__340.jpg",
        ),
        UrunKarti(
          "Yumurta 15'li",
          "16.50 TL",
          "https://cdn.pixabay.com/photo/2015/09/17/17/19/eggs-944495__340.jpg",
          mevcut: true,
        ),
        UrunKarti(
          "Makarna",
          "1.50 TL",
          "https://cdn.pixabay.com/photo/2016/08/30/20/20/noodles-1631935__340.jpg",
        ),
        UrunKarti(
          "Çay",
          "29.50 TL",
          "https://cdn.pixabay.com/photo/2016/11/29/13/05/breakfast-1869717__340.jpg",
        ),
        UrunKarti(
          "Ketçap",
          "9.50 TL",
          "https://cdn.pixabay.com/photo/2016/06/10/16/17/tomatoes-1448361__340.jpg",
        ),
        UrunKarti(
          "Un 5 Kg",
          "25 TL",
          "https://cdn.pixabay.com/photo/2015/05/31/13/43/flour-791840__340.jpg",
        ),
      ];
    } else if (widget.kategori == "Şekerleme") {
      gosterilecekListe = [
        UrunKarti(
          "Çikolata Hediyelik",
          "23.50 TL",
          "https://cdn.pixabay.com/photo/2014/10/16/13/20/chocolates-491165__340.jpg",
        ),
        UrunKarti(
          "Karışık Kurabiye",
          "20 TL",
          "https://cdn.pixabay.com/photo/2016/02/19/10/52/bakery-1209446__340.jpg",
        ),
        UrunKarti(
          "Çilekli Kek",
          "15 TL",
          "https://cdn.pixabay.com/photo/2018/04/02/22/10/strawberries-3285333__340.jpg",
        ),
        UrunKarti(
          "Pasta",
          "19 TL",
          "https://cdn.pixabay.com/photo/2018/02/08/18/28/strawberry-pie-3140025__340.jpg",
        ),
      ];
    } else if (widget.kategori == "İçecekler") {
      gosterilecekListe = [
        UrunKarti(
          "Portakal Suyu",
          "5.50 TL",
          "https://cdn.pixabay.com/photo/2016/08/23/15/52/fresh-orange-juice-1614822__340.jpg",
        ),
        UrunKarti(
          "Şişe Su",
          "1 TL",
          "https://cdn.pixabay.com/photo/2017/12/13/22/02/bottle-3017833__340.jpg",
        ),
        UrunKarti(
          "Maden Suyu 6'lı",
          "5.50 TL",
          "https://cdn.pixabay.com/photo/2017/05/29/13/08/lime-2353741__340.jpg",
        ),
        UrunKarti(
          "Gazoz",
          "1.50 TL",
          "https://cdn.pixabay.com/photo/2019/11/23/19/11/glasses-of-mint-4647914__340.jpg",
        ),
      ];
    } else if (widget.kategori == "Temizlik") {
      gosterilecekListe = [
        UrunKarti(
          "Bulaşık Deterjanı",
          "16.50 TL",
          "https://cdn.pixabay.com/photo/2016/10/31/21/18/dishwasher-1786821__340.jpg",
        ),
        UrunKarti(
          "Sıvı Sabun",
          "7.50 TL",
          "https://cdn.pixabay.com/photo/2016/02/11/14/48/bottle-1193706__340.jpg",
        ),
      ];
    }
  }

  // ignore: non_constant_identifier_names
  Widget UrunKarti(String isim, String fiyat, String resimYolu, {bool mevcut=false}) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) =>UrunDetay(
          isim: isim,
          fiyat: fiyat,
          resimYolu: resimYolu,
          mevcut: mevcut,

        )));
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 4.0,
                spreadRadius: 2.0,
              )
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Hero(
              tag: resimYolu,
              child: Container(
                width: 120.0,
                height: 80.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(resimYolu),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(isim,
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600],
                )),
            SizedBox(
              height: 8.0,
            ),
            Text(fiyat,
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red[400],
                )),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 12.0,
      crossAxisSpacing: 12.0,
      padding: EdgeInsets.all(10.0),
      childAspectRatio: 1,
      children: gosterilecekListe,
    );
  }
}
