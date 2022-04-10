import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/profil');
              },
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/porto');
              },
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/contc');
              },
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/ket');
              },
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/gal');
              },
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/set');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red[200],
        appBar: AppBar(
          centerTitle: true,
          title: Text('My Profil'),
          backgroundColor: Colors.pink[600],
        ),
        body: Column(
          children: [
            Padding(padding: EdgeInsets.fromLTRB(0, 50, 0, 0)),
            new Image.asset(
              'asset/myprofil.jpeg',
              width: 250,
              height: 250,
              fit: BoxFit.cover,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(8, 15, 8, 5),
              height: 150,
              child: Card(
                color: Colors.white,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Nama                   : Putri Novitasari\n"
                    "Nim                      : 362055401029\n"
                    "Prodi                    : Teknik Informatika\n"
                    "Jenis Kelamin      : Perempuan",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}

class PortofolioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[200],
      appBar: AppBar(
        centerTitle: true,
        title: Text('Portofolio'),
        backgroundColor: Colors.pink[600],
      ),
      body: GridView.count(crossAxisCount: 2, children: <Widget>[
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.asset("asset/image/gmbr1.jpeg", height: 172.0, width: 172.0, fit: BoxFit.cover),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.asset("asset/image/gmbr2.jpeg", height: 172.0, width: 172.0, fit: BoxFit.cover),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.asset("asset/image/gmbr3.jpeg", height: 172.0, width: 172.0, fit: BoxFit.cover),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.asset("asset/image/gmbr4.jpeg", height: 172.0, width: 172.0, fit: BoxFit.cover),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.asset("asset/image/gmbr5.jpeg", height: 172.0, width: 172.0, fit: BoxFit.cover),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.asset("asset/image/gmbr6.jpeg", height: 172.0, width: 172.0, fit: BoxFit.cover),
            ]),
          ),
        ),
      ]),
    );
  }
}

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[200],
      appBar: AppBar(
        centerTitle: true,
        title: Text('Contact'),
        backgroundColor: Colors.pink[600],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text("Putri Novitasari"),
            ),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: ListTile(
              leading: Icon(Icons.email),
              title: Text("putrinovitasr14@gmail.com"),
            ),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: ListTile(
              leading: Icon(Icons.contact_phone),
              title: Text("0812-1774-0651"),
            ),
          ),
        ],
      ),
    );
  }
}

class Gallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[200],
      appBar: AppBar(
        centerTitle: true,
        title: Text('My Gallery'),
        backgroundColor: Colors.pink[600],
      ),
      body: GridView.count(crossAxisCount: 2, children: <Widget>[
        Container(
          child: Card(
            elevation: 20.0,
            child: Column(children: <Widget>[
              Image.asset("asset/img/pict3.jpeg", height: 150.0, width: 200.0, fit: BoxFit.cover),
              SizedBox(height: 1.0),
              Text(
                'Gambar 1',
                style: TextStyle(color: Colors.pinkAccent[900], fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 20.0,
            child: Column(children: <Widget>[
              Image.asset("asset/img/pict3.jpeg", height: 150.0, width: 200.0, fit: BoxFit.cover),
              SizedBox(height: 1.0),
              Text(
                'Gambar 2',
                style: TextStyle(color: Colors.pinkAccent[900], fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 20.0,
            child: Column(children: <Widget>[
              Image.asset("asset/img/pict3.jpeg", height: 150.0, width: 200.0, fit: BoxFit.cover),
              SizedBox(height: 1.0),
              Text(
                'Gambar 3',
                style: TextStyle(color: Colors.pinkAccent[900], fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 20.0,
            child: Column(children: <Widget>[
              Image.asset("asset/img/pict3.jpeg", height: 150.0, width: 200.0, fit: BoxFit.cover),
              SizedBox(height: 1.0),
              Text(
                'Gambar 4',
                style: TextStyle(color: Colors.pinkAccent[900], fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 20.0,
            child: Column(children: <Widget>[
              Image.asset("asset/img/pict3.jpeg", height: 150.0, width: 200.0, fit: BoxFit.cover),
              SizedBox(height: 1.0),
              Text(
                'Gambar 5',
                style: TextStyle(color: Colors.pinkAccent[900], fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 20.0,
            child: Column(children: <Widget>[
              Image.asset("asset/img/pict3.jpeg", height: 150.0, width: 200.0, fit: BoxFit.cover),
              SizedBox(height: 1.0),
              Text(
                'Gambar 6',
                style: TextStyle(color: Colors.pinkAccent[900], fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
      ]),
    );
  }
}

class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[200],
      appBar: AppBar(
        centerTitle: true,
        title: Text('My Setting'),
        backgroundColor: Colors.pink[600],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        width: 1000,
        child: Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suscipit felis dignissim ante faucibus, sit amet convallis urna elementum. Vestibulum gravida tortor eu erat fringilla accumsan. Aenean quis ullamcorper libero. Aliquam bibendum sem non ligula interdum, ut sagittis lectus aliquam. Donec dictum, neque et rhoncus scelerisque, mauris orci faucibus ex, at euismod orci orci sed risus. Sed mattis turpis id molestie viverra. Morbi convallis, ipsum eget cursus placerat, odio ligula blandit dolor, eget pretium felis orci non ligula.',
          style: TextStyle(
            fontSize: 18,
            height: 2,
            fontStyle: FontStyle.italic,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
