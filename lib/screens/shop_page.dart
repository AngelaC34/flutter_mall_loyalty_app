import 'my_drawer.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
        title: const Text("Shop Page"),
      ),
      drawer: MyDrawer(),
    );
  }
}

class PromoPage extends StatelessWidget {
  const PromoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Promo Page"),
      ),
      body: Center(
        child: Text("This is the Promo Page"),
      ),
      drawer: MyDrawer(),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShopPage(),
      routes: {
        '/shoppage': (context) => const ShopPage(),
        '/promopage': (context) => const PromoPage(),
      },
    ),
  );
}
