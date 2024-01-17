import 'package:flutter/material.dart';
import 'package:shopping/pages/cart_page.dart';
import 'package:shopping/pages/home_page.dart';
import 'package:shopping/pages/login_page.dart';

class TabsPage extends StatelessWidget {
  const TabsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const TabBarView(
        children: [
          Homepage(),
          CartPage(),
          LoginPage(),
        ],
      ),
      bottomNavigationBar: TabBar(
        tabs: const [
          Tab(
            icon: Icon(Icons.home),
            text: "Home",
          ),
          Tab(
            icon: Icon(Icons.shopping_cart),
            text: "Cart",
          ),
          Tab(
            icon: Icon(Icons.perm_identity),
            text: "Login",
          ),
        ],
        labelColor: Theme.of(context).primaryColor,
        unselectedLabelColor: Theme.of(context).unselectedWidgetColor,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorPadding: const EdgeInsets.all(5),
        indicatorColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
