import 'package:flutter/material.dart';

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
      home: GirisSayfasi(),
    );
  }
}

class GirisSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 55.0,
              ),
              Container(
                width: 129.0,
                height: 120.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/logo-1736292_640.png"))),
              ),
              SizedBox(
                height: 25.0,
              ),
              Text("world",
                  style: TextStyle(
                      color: Colors.pink,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                height: 35.0,
              ),
              Material(
                borderRadius: BorderRadius.circular(20.0),
                elevation: 7.0,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "Giriş",
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          width: double.infinity,
                          height: 52.0,
                          decoration: BoxDecoration(
                              color: Colors.pink,
                              borderRadius: BorderRadius.circular(20.0)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "Facebook Giriş",
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                height: 52.0,
                                decoration: BoxDecoration(
                                    color: Colors.indigo,
                                    borderRadius: BorderRadius.circular(20.0)),
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "Gmail Giriş",
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                height: 52.0,
                                decoration: BoxDecoration(
                                    color: Colors.red[600],
                                    borderRadius: BorderRadius.circular(20.0)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromARGB(255, 255, 192, 203),
                            Color.fromARGB(155, 255, 192, 203),
                          ]),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0)),
                  alignment: Alignment.topRight,
                  width: MediaQuery.of(context).size.width - 70.0,
                  height: 180.0,
                ),
              )
            ],
          ),
        ));
  }
}
