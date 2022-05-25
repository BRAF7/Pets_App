import 'package:flutter/material.dart';

class BurguerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(""),
            accountEmail: Text(""),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage("https://w0.peakpx.com/wallpaper/452/79/HD-wallpaper-el-legendario-cheems-entretenida-caricatura.jpg"),
              ),
            ),
          ),
          ExpansionTile(
            title: Text("Expansion Title"),
            children: <Widget>[Text("children 1"), Text("children 2")],
          ),
          ExpansionTile(
            title: Text("Expansion Title"),
            children: <Widget>[Text("children 1"), Text("children 2")],
          )
        ],
      ),
    );
  }
}
