import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _drawerHeader(),
          _drawerItem(
              icon: (Icons.account_circle),
              text: 'Profil',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(0);
                Navigator.pushNamed(context, '/profil');
              }),
          Divider(height: 3, thickness: 1),
          _drawerItem(
              icon: (Icons.perm_identity),
              text: 'Portofolio',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(1);
                Navigator.pushNamed(context, '/porto');
              }),
          Divider(height: 3, thickness: 1),
          _drawerItem(
              icon: (Icons.contacts),
              text: 'Contact Us',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(2);
                Navigator.pushNamed(context, '/contc');
              }),
          Divider(height: 5, thickness: 1, color: Colors.black),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
            child: Text(
              'Keterangan',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
          ),
          _drawerItem(
              icon: (Icons.collections),
              text: 'Gallery',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(3);
                Navigator.pushNamed(context, '/gal');
              }),
          Divider(height: 3, thickness: 1),
          _drawerItem(
              icon: (Icons.settings),
              text: 'Setting',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(4);
                Navigator.pushNamed(context, '/set');
              }),
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage('https://i.pinimg.com/originals/23/22/34/2322347b7eb233fb24180f30543aef33.png'),
      ),
    ),
    currentAccountPicture: ClipOval(
      child: Image(image: AssetImage('asset/myprofil.jpeg'), fit: BoxFit.cover),
    ),
    accountName: Text('PUTRI NOVITASARI'),
    accountEmail: Text('putrinovitasr14@gmail.com'),
  );
}

Widget _drawerItem({required IconData icon, required String text, required GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}
