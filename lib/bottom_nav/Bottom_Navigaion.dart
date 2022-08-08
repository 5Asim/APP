import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _page =0;
  final screens = [
    Home(),
    map(),
    Profile(),
    Pdf(),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4,horizontal: 2),
      child: Scaffold(
    
        bottomNavigationBar: GNav(
         
        backgroundColor: Colors.white ,
          hoverColor: Colors.grey,
          gap: 8,
          activeColor: Colors.black,
          iconSize: 24,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          duration: Duration(milliseconds: 400),
          tabBackgroundColor: Colors.grey,
          color: Colors.black,
        tabs:const  [
        GButton(
          icon: Icons.home,
          text: 'Home',
        ),
        GButton(
          icon: Icons.map,
          
          text: 'map',
          
        ),
        
        GButton(
          icon: Icons.people,
          text: 'Profile',
        ),

        GButton(
          icon: Icons.report,
         
          text: 'report',
          
        ),
        ],
        selectedIndex: _page,
        onTabChange: (index)
        {
        setState(() {
          _page = index;
        });
        },
        ),
        body: IndexedStack(
          index: _page,
          children: screens,
        ),
      ),
    );
  }
}


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("Home");
  }
}

class map extends StatelessWidget {
  const map({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("Map");
  }
}

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("Profile");
  }
}


class Pdf extends StatelessWidget {
  const Pdf({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("Pdf"); 
  }
}