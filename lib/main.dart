import 'package:flutter_web/material.dart';

void main() => runApp(Petanikode());

class Petanikode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Petanikode - Belajar Membuat Web dengan Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyWebsite(),
    );
  }
}

class MyWebsite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Petani Kode'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                width: 200.0,
                height: 200.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: new NetworkImage(
                          "https://avatars2.githubusercontent.com/u/16254602?v=4",
                        )))),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Selamat datang di Flutter untuk Web',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
            ),
            Column(
              children: <Widget>[
                Text("Ini adalah demo aplikasi web yang dibuat dengan Flutter."),
                SizedBox(height: 30),
              ],
            )
          ],
        ),
      ),
    );
  }
}
