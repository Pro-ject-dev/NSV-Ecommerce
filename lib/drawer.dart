import 'package:flutter/material.dart';

class Drawerh extends StatefulWidget {
  const Drawerh({Key? key}) : super(key: key);

  @override
  State<Drawerh> createState() => _DrawerhState();
}

class _DrawerhState extends State<Drawerh> {
  @override
  Widget build(BuildContext context) {
    double hei = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return Container(
      height: hei,
      width: wid,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.lightBlue.shade500, Colors.green],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight)),
      child: Material(
        color: Colors.transparent,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
              ),
              accountName: Text("vasudevan"),
              accountEmail: Text("Vasudevan7941@mountzion.ac.in"),
              decoration: BoxDecoration(color: Colors.transparent),
            ),
            Menu(title: "Orders", IconName: Icons.border_color_sharp),
            Menu(title: "Address", IconName: Icons.bookmark),
            Menu(title: "Notifications", IconName: Icons.notifications),
            Menu(title: "RateUs", IconName: Icons.star_half),
            Menu(title: "Help", IconName: Icons.help),
            Menu(title: "About", IconName: Icons.account_box_sharp),
            Menu(title: "Logout", IconName: Icons.exit_to_app)
          ],
        ),
      ),
    );
  }
}

class Menu extends StatefulWidget {
  final String title;
  final IconData IconName;
  const Menu({
    Key? key,
    required this.title,
    required this.IconName,
  }) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    double hei = MediaQuery.of(context).size.height;
    return ListTile(
        minVerticalPadding: hei / 30,
        onTap: () {},
        title: Text(widget.title,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        leading: Container(
          padding: EdgeInsets.all(7),
          decoration: BoxDecoration(
              color: Colors.white24, borderRadius: BorderRadius.circular(10)),
          child: Icon(widget.IconName, color: Colors.white, size: hei / 30),
        ));
  }
}
