import 'package:flutter/material.dart';
import 'package:mvp_all/Home/ui/widget/image_description.dart';
import 'package:mvp_all/Home/ui/widget/image_row.dart';

import '../../../colors/colors_views.dart';
import '../widget/burguer_menu.dart';
import '../widget/slider_widget.dart';

class HomeVetApp extends StatefulWidget {
  const HomeVetApp({Key? key}) : super(key: key);

  @override
  State<HomeVetApp> createState() => _HomeVetAppState();
}

class _HomeVetAppState extends State<HomeVetApp> {
  int pageIndex = 0;
  int _selectedIndex = 0;

  final List<Widget> _pages = <Widget>[
    Container(),
    ListView(
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 40),
            child: Carousel(),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 2.5),
            ),
            child: Row(
              children: circular_events(),
            ),
          ),
          ImageRow()
        ],
      ),
    Container(),
  ];


  @override
  Widget build(BuildContext context) {
    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: ColorsViews.text_header,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 4, bottom: 4, right: 15),
            child: Image.asset(
              'assets/image/splash.png',
              color: Colors.white,
            ),
          )
        ],
      ),
      drawer: BurguerMenu(),
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.one_x_mobiledata),
            label: 'XXX',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

List<Padding> circular_events() {
  List<Padding> circular_event = List<Padding>.generate(
    5,
    (index) => Padding(
      padding: const EdgeInsets.only(left: 25, right: 30),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 20,
          height: 20,
          decoration:
              const BoxDecoration(color: Colors.black, shape: BoxShape.circle),
        ),
      ),
    ),
  );

  return circular_event;
}

List<Padding> image_events() {
  List<Padding> circular_event = List<Padding>.generate(
    3,
    (index) => Padding(
      padding: const EdgeInsets.only(left: 20, right: 25),
      child: InkWell(
        // No me deja manejar eventos
        onTap: () {},
        child: Container(
          width: 80,
          height: 100,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://w0.peakpx.com/wallpaper/452/79/HD-wallpaper-el-legendario-cheems-entretenida-caricatura.jpg"),
            ),
          ),
        ),
      ),
    ),
  );

  return circular_event;
}
