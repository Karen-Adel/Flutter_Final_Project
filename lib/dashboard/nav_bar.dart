import 'package:firstapp/dashboard/dashboard_screen.dart';
import 'package:firstapp/favorite/favorite_screen.dart';
import 'package:firstapp/profile/profile_page/profile_page.dart';
import 'package:firstapp/quote/quote_screen.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
 


  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:[
        DashboardScreen(),
        QuoteScreen(),
        FavoriteScreen(),
        ProfilePage(),
      ]

      [_selectedIndex],



      bottomNavigationBar :NavigationBar(
        onDestinationSelected: (index){
          setState(() {
            _selectedIndex = index;
          });

        },
        destinations: [
        NavigationDestination(icon: Icon(Icons.dashboard), label: "Dashboard"),
        NavigationDestination(icon: Icon(Icons.format_quote), label: "Quote"),
        NavigationDestination(icon: Icon(Icons.favorite), label: "Favorite"),
        NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
      ],
        
      ),


      
        
    );
  }
}