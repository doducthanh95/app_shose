import 'package:flutter/material.dart';
import 'package:flutter_shoes_app/app/account/account.dart';
import 'package:flutter_shoes_app/app/cart/cart_screen.dart';
import 'package:flutter_shoes_app/app/home/home_screen.dart';
import 'package:flutter_shoes_app/app/search/search_screen.dart';
import 'package:flutter_shoes_app/common/colors.dart';

class MainNavigation extends StatefulWidget {
  @override
  _MainNavigationState createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: [
          HomeScreen(),
          SearchScreen(),
          CartScreen(),
          HomeScreen(),
          AccountScreen()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        unselectedItemColor: AppColors.grey,
        selectedItemColor: AppColors.blue,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_active_outlined), label: 'Other'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: 'Account'),
        ],
      ),
    );
  }
}
