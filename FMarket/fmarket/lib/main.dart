import 'package:flutter/material.dart';
import 'package:fmarket/sepetim.dart';
import 'package:fmarket/urunler.dart';

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
  int _aktifIceriklerNo = 0;
  late List<Widget> _icerikler;

  @override
  initState() {
    super.initState();

    _icerikler = [Urunler(), Sepetim()];
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.red[400]),
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Uçarak Gelsin",
          style: TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.grey),
        ),
      ),
      body: _icerikler[_aktifIceriklerNo],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0.0),
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Berk Kaya"),
              accountEmail: Text("Berk.kaya@mailim"),
              currentAccountPicture: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage("https://cdn.pixabay.com/photo/2016/10/26/19/20/rik-castillo-1772335__340.jpg"),
                    fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.circular(50.0),
                ),
              ),
              decoration:BoxDecoration(color: Colors.red[400]),
            ),
            ListTile(title: Text("Sparişlerim"),onTap: (){},),
            ListTile(title: Text("İndirimlerim"),onTap: (){},),
            ListTile(title: Text("Ayarlar"),onTap: (){},),
            ListTile(title: Text("Çıkış Yap"),onTap: (){
              Navigator.pop(context);
            },),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _aktifIceriklerNo,
        selectedItemColor: Colors.red[400],
        unselectedItemColor: Colors.grey[600],
        items: [
          // ignore: deprecated_member_use
          BottomNavigationBarItem(
              // ignore: deprecated_member_use
              icon: Icon(Icons.home),
              // ignore: deprecated_member_use
              title: Text("Ürünler")),
          // ignore: deprecated_member_use
          BottomNavigationBarItem(
              // ignore: deprecated_member_use
              icon: Icon(Icons.shopping_cart),
              // ignore: deprecated_member_use
              title: Text("Sepetim")),
        ],
        onTap: (int tiklananButtonPozisyonNo) {
          setState(() {
            _aktifIceriklerNo = tiklananButtonPozisyonNo;
          });
        },
      ),
    );
  }
}
