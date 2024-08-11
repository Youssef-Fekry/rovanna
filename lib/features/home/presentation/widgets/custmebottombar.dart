import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:rovanna_app/core/utils/constans.dart';
import 'package:rovanna_app/features/home/presentation/views/homescreen.dart';
import 'package:rovanna_app/features/cart/presentation/views/cartscreen.dart';
import 'package:rovanna_app/features/categories/presentation/views/categoriesscreen.dart';
import 'package:rovanna_app/features/profile/presentation/views/profilescreen.dart';
import 'package:rovanna_app/features/wishlist/presentation/views/wishlsitscreen.dart';

class Custmebottombar extends StatefulWidget {
  const Custmebottombar({super.key});

  @override
  State<Custmebottombar> createState() => _CustmebottombarState();
}

class _CustmebottombarState extends State<Custmebottombar> {
  int myCurrentIndex = 2; //  the default index is 2 for the Home screen
  List pages = [
    const Profilescreen(),
    const Wishlsitscreen(),
    const Homescreen(),
    const Categoriesscreen(),
    const Cartscreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 25,
              offset: const Offset(8, 20))
        ]),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BottomNavigationBar(
              selectedItemColor: kPrimaryColor,
              unselectedItemColor: Colors.white.withOpacity(0.3),
              currentIndex: myCurrentIndex,
              onTap: (index) {
                setState(() {
                  myCurrentIndex = index;
                });
              },
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(FontAwesomeIcons.user), label: "Profile"),
                BottomNavigationBarItem(
                    icon: Icon(FontAwesomeIcons.heart), label: "Wishlist"),
                BottomNavigationBarItem(
                    icon: Icon(FontAwesomeIcons.house), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.grid_view), label: "menu"),
                BottomNavigationBarItem(
                    icon: Icon(FontAwesomeIcons.cartShopping), label: "cart"),
              ]),
        ),
      ),
      body: pages[myCurrentIndex],
    );
  }
}
