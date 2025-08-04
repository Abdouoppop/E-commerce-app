import 'package:e_commerce_app/views/pages/cart_page.dart';
import 'package:e_commerce_app/views/pages/favorites_page.dart';
import 'package:e_commerce_app/views/pages/profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final PersistentTabController _controller;
  @override
  void initState() {
    _controller = PersistentTabController(initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      controller: _controller,
      tabs: [
        PersistentTabConfig(
          screen: const HomePage(),
          item: ItemConfig(icon: const Icon(Icons.home), title: "Home"),
        ),
        PersistentTabConfig(
          screen: const CartPage(),
          item: ItemConfig(
            icon: const Icon(CupertinoIcons.cart),
            title: "My orders",
          ),
        ),
        PersistentTabConfig(
          screen: const FavoritesPage(),
          item: ItemConfig(
            icon: const Icon(CupertinoIcons.heart),
            title: "Favorites",
          ),
        ),
        PersistentTabConfig(
          screen: const ProfilePage(),
          item: ItemConfig(
            icon: const Icon(CupertinoIcons.person),
            title: "Profile",
          ),
        ),
      ],
      navBarBuilder:
          (navBarConfig) => Style1BottomNavBar(navBarConfig: navBarConfig),
    );
  }
}
